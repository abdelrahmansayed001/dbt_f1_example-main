<!-- This README file is generated for the dbt F1 Example project. -->
<!-- It contains setup instructions, workflow details, and documentation guidance. -->

# dbt F1 Example

A dbt project for transforming Formula 1 data into analytics-ready models. This README covers the standard setup and workflow; the warehouse, sources, and available models are determined by the files in this repository.

## Prerequisites

- Python and dbt Core.
- The dbt adapter for your data warehouse (for example, `dbt-postgres` or `dbt-bigquery`).
- Access to the warehouse and any source data referenced by the project.

Install the adapter that matches your warehouse. For example:

```bash
python -m pip install dbt-postgres
```

## Setup

1. Open this repository's project directory.
2. Inspect `dbt_project.yml` to find the required dbt project and profile names.
3. Add a matching profile to `~/.dbt/profiles.yml` with your warehouse connection details.
4. Ensure the configured database and schema exist and that required source data is available.
5. Verify the configuration:

```bash
dbt debug
```

Keep credentials out of version control. Store them in your local dbt profile or an approved secrets manager.

## Common commands

```bash
dbt deps       # Install packages declared by the project
dbt run        # Build models
dbt test       # Run data tests
dbt build      # Build models and run associated tests
```

To build one model along with its upstream dependencies, run:

```bash
dbt build --select +model_name
```

## Documentation

Generate and serve dbt documentation after configuring the project:

```bash
dbt docs generate
dbt docs serve
```

## Project contents

Review the repository's directories and YAML configuration for the exact models and inputs. Typical dbt projects use `models/` for SQL transformations and model metadata, `seeds/` for CSV inputs, `snapshots/` for change tracking, and `tests/` for custom SQL tests. `dbt_project.yml` describes the project configuration, and source declarations document upstream data dependencies.
