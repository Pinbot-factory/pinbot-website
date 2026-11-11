# pinbot-website-proto

A [Zensical](https://zensical.org) site: sources in `docs/`, config in `zensical.toml`, built static output in `site/`, build cache in `.cache/`.

## Commands

- `uv sync` — install dependencies (zensical) into `.venv/` from `uv.lock`.
- `uv run zensical serve --dev-addr 0.0.0.0:8000` — dev server with live rebuild at http://localhost:8000.
- `uv run zensical build` — build the static site into `site/`.
- `uv run zensical build --clean` — build after clearing the `.cache/` build cache.