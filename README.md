# Curricular design

This is intended to be a compilation of the whole Dominican curriculum in its different available versions.

This repo should be easily used as replacement for database engine since pushing all this data in a database somehow pointless.

## Format

Every curriculum file is written in YAML format since it is really simple to read, maintain and parse, convenient for both human and computer consumption.

## Structure

All data is placed in the `/data` folder.
One level deeper, is the versioning layer, here the user can choose from `/data/standard`, `/data/pandemic` or `/data/revision` for the 'old' version, the pandemic times version and the new curriculum revision version respectively.
The next layer is the level one, which fork the path into `kinder`, `elementary` and `high-school`.
Next you'll found the grade layer, here you must look into the level you're interested in, e.g. `/data/revision/elementary/first`.
The next and last layer, the subject, where the options are the following:
- spanish
- math
- social-studies
- science
- english
- french
- artistic-education
- physical-education
- religion

To retrieve any of these, remember to use the extension `.yaml`

## Entry Model

Each file is structured as follows:
- curriculum-version
- level
- grade
- subject
- data
    - index
        - title
        - theme
        - topic
        - contents
            - concepts
            - procedures
            - attitudes
        - competences
            - fundamental
            - specific
        - indicators
