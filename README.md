# L16-Engine
## L16 - Morphological Tokenizer

L16 is a highly effective tokenizer based on the morphological analysis of languages. It is designed to break down text into meaningful units (tokens), taking into account the morphological structure of words, such as suffixes, prefixes, and endings. This makes it particularly useful for working with morphologically rich languages.

## Supported Languages

L16 is designed to analyze languages with pronounced morphology, including, but not limited to:

*   English
*   Russian
*   Ukrainian
*   German
*   Italian
*   And other languages where words are modified using affixes.

## Features

*   **Morphological Approach:** Unlike tokenizers based on statistics or spaces, L16 analyzes the internal structure of words.
*   **Flexible Configuration:** Provides various tokenization "profiles" for different levels of granularity and tasks.
*   **Support for Existing Dictionaries:** It can work both by creating a new token dictionary and by augmenting an existing one.
*   **High Performance:** Written in Cython to ensure high-speed text processing.

## How It Works

At its core, L16 is based on the idea of splitting text into tokens by specified delimiter characters. However, unlike simple splitting, L16 accounts for repeated characters and attempts to preserve meaningful parts of words.

The algorithm iterates over the text and analyzes character sequences. If a sequence does not contain delimiter characters, it is treated as a potential token. The "levels" (`level1`, `level2`, `level3`) in the `_L16tl` and `_L16tlu` functions represent different depths of analysis for splitting out-of-vocabulary words. A higher level attempts to break down a word into more constituent parts (potential morphemes) to find tokens that already exist in the dictionary.

## Installation

To use this tokenizer, you need to compile the provided Cython code. Save the code in a file with the `.pyx` extension (e.g., `L16.pyx`) and use `distutils` for building:

```python
# setup.py
from distutils.core import setup
from Cython.Build import cythonize

setup(
    ext_modules=cythonize("L16.pyx", compiler_directives={'language_level': "3"})
)
```

Then execute the following in your terminal:

```bash
python setup.py build_ext --inplace
```

After this, you will be able to import the `L16` function into your projects.

## Usage

The main function `L16` accepts several parameters, which allow for flexible configuration of the tokenization process.

```python
def L16(str text, list sb_list, str txend="\n", int lword=6, str profile="None", object dtobj=None):
```

### Parameters

*   `text` (str): The input text for tokenization.
*   `sb_list` (list): A list of separator characters by which the text will be split into tokens.
*   `txend` (str, optional): A character or string appended to the end of the text for correct processing of the last token. Defaults to `\n`.
*   `lword` (int, optional): The minimum word length to which the "smart" splitting rules will be applied for the `tl` and `tlu` profiles. Defaults to `6`.
*   `profile` (str, optional): The tokenization profile, which defines the processing logic.
*   `dtobj` (dict, optional): An existing dictionary of tokens. If provided, the function will augment/update it.

### Tokenization Profiles

L16 provides several profiles for various scenarios:

*   **`t` (`_L16t`)**: The base profile. Creates new tokens if they are not in the dictionary.
*   **`tu` (`_L16tu`)**: The update profile. Only increments the counter for tokens that already exist in the dictionary.
*   **`tl1`, `tl2`, `tl3` (`_L16tl_level*`)**: The "learning" profiles. If a token is not in the dictionary and is longer than `lword`, they attempt to split it by dropping characters from the beginning or end to find an already existing stem in the dictionary. Levels 1, 2, and 3 define how many characters can be dropped.
*   **`tlu1`, `tlu2`, `tlu3` (`_L16tlu_level*`)**: The "update with learning" profiles. They work similarly to `tl` but only increment the counter for existing tokens, without adding new ones.

### Code Examples

#### Using the Learning Profile (Profile `tl3`)

```python
import L16

text = '''Advanced rocket engineering is the cornerstone of modern astronautics and the broader field of rocketry. The fundamental principles involve complex systems integration. The primary propulsion systems rely on powerful engines, which facilitate the controlled combustion of specialized propellant mixtures. This massive propulsive force is precisely calculated to overcome gravity.

The structural integrity of these launch vehicles is paramount. Engineers design resilient structures, paying close attention to every structural component to ensure it can withstand incredible stress. Materials science plays a key role in developing these components.

For a successful mission, precise navigation is non-negotiable. The guidance systems are incredibly sophisticated, providing constant navigational updates to maintain the correct trajectory. The stabilization of the rocket is managed by multiple stabilizers, ensuring a stable flight path. After launching, the vehicle positions itself for orbital insertion, eventually orbiting the Earth. This entire process, from launch to a stable orbit, is a marvel of modern engineered solutions.'''
separators = [' ', '.', ',', '!', '?']

# Use the learning profile to create a dictionary
token_counts = L16.L16(text, separators, profile="tl3")

print(token_counts)
# Expected Output: {'the': 11, 'a': 7, 'is': 6, 'of': 6, 'to': 5, 'rocket': 3, 'systems': 3, 'launch': 3, 'it': 3, 'modern': 2, 'this': 2, 'structural': 2, 'these': 2, 'component': 2, 'navigation': 2, 'stable': 2, 'advanced': 1, 'engineering': 1, 'cornerstone': 1, ...}```
