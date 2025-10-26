import importlib

import yaml

import example

print(f"{example.__version__=}")

with importlib.resources.files("example.data").joinpath("01.yml").open("r") as myfile:
    content = yaml.safe_load(myfile)

print(f"{content=}")
