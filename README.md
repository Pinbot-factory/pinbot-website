# pinbot.cc website

A [Zensical](https://zensical.org) site: sources in `docs/`, config in `zensical.toml`, built static output in `site/`, build cache in `.cache/`.

## Commands

`scripts/site.sh` writes the footer build info (year, commit) and passes its arguments to `uv run zensical`.
Zensical templates can't read the date or run git, and `zensical.toml` has no env vars, so a plain `uv run zensical` leaves the footer build line empty.

- `uv sync` — install dependencies (zensical) into `.venv/` from `uv.lock`.
- We call intermediate script to gather current year and build hash:
    - `scripts/site.sh serve --dev-addr 0.0.0.0:8000` — dev server with live rebuild at http://localhost:8000.
    - `scripts/site.sh build` — build the static site into `site/`.
    - `scripts/site.sh build --clean` — build after clearing the `.cache/` build cache.

## Icons

Bundled icon sets (SVGs in `.venv/lib/python3.12/site-packages/zensical_ui/templates/.icons/`):

| Set | Config prefix | Icons | Browse |
|---|---|---|---|
| Lucide | `lucide/` | 2350 | https://lucide.dev/icons |
| Material Design | `material/` | 7447 | https://pictogrammers.com/library/mdi |
| Font Awesome | `fontawesome/brands/`, `/regular/`, `/solid/` | 2883 | https://fontawesome.com/icons (free only) |
| Octicons (GitHub) | `octicons/` | 784 | https://primer.style/octicons |
| Simple Icons (brand logos) | `simple/` | 3470 | https://simpleicons.org |

Usage:

- In `zensical.toml`, reference an icon by path: `lucide/sun`, `fontawesome/brands/github`.
- In Markdown, use the path with dashes between colons: `:lucide-sun:`, `:fontawesome-brands-github:`.
- In html it is like `.icons/fontawesome/brands/github.svg`

## License
- [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en) is for docs, pictures, articles, video, assets, etc.

Pinbot projects structure may mix different sources and artifacts — check corresponding dirrectories for `LICENSE` file.
