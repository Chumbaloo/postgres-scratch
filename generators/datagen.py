import random
import pathlib
import uuid
import itertools
import collections
import faker
import typing
import json
import string

SCRIPT_PATH = pathlib.Path(__file__).parent.absolute()
DATA_PATH = SCRIPT_PATH.parent / 'data'
SQL_PATH = SCRIPT_PATH.parent / 'sql'
INPUT_PATH = DATA_PATH / 'input.json'
OUTPUT_PATH = SQL_PATH / 'output.sql'

class KeyDefaultDict(collections.defaultdict):
    def __missing__(self, key):
        res = self[key] = itertools.count(start=1, step=1)
        return res


relations = KeyDefaultDict(itertools.count)

faker.Faker.seed(1000)
random.seed(500)

fake = faker.Faker()


def get_input_data(filename):
    with open(filename) as _f:
        return json.loads(_f.read())


def gen_name() -> str:
    return f"'{fake.name()}'"


def gen_text(length: int) -> str:
    return f"'{''.join(random.choice(string.ascii_letters + string.digits) for _ in range(length))}'"


def gen_int(n_min: int, n_max: int) -> str:
    return str(random.randint(n_min, n_max))


def gen_pk(relation: str) -> str:
    return str(next(relations[relation]))


def get_numeric(n_min: float, n_max: float) -> str:
    return str(random.uniform(n_min, n_max))


def get_choice(items: typing.List[str]) -> str:
    return f"'{random.choice(items)}'"


# TODO: implemement standard sequence insertion without sampling

# # TODO: Implement unique across all INSERT statements.
# def get_choice_no_replacement(items: typing.List[str]) -> str:
#     return f"'{random.sample(items)}'"

def get_unique() -> str:
    return f"'{str(uuid.uuid4())}'"


def get_address() -> str:
    return "'{}'".format(fake.address().replace("\n", ""))


def get_country() -> str:
    return f"'{fake.country()}'"


def get_phone() -> str:
    return f"'{fake.phone_number()}'"


function_mapper = {
    'name': gen_name,
    'text': gen_text,
    'integer': gen_int,
    'series': gen_pk,
    'choice': get_choice,
    'unique': get_unique,
    'address': get_address,
    'country': get_country,
    'phone': get_phone,
    'numeric': get_numeric
}

test_dict = get_input_data(INPUT_PATH)

with open(OUTPUT_PATH, 'w') as _f:

    for rel in test_dict:
        for i in range(rel['valuesToGenerate']):
            for relation, columns in rel['Relation'].items():
                _f.write(f'INSERT INTO {relation} ({",".join(columns.keys())}) VALUES ({",".join([function_mapper[a](*b) for a, *b in columns.values()])});\n')


