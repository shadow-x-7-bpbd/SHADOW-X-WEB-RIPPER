# 🕷️ SHADOW X WEB RIPPER

**Website Source & Asset Downloader for Termux / Linux**

SHADOW X WEB RIPPER downloads publicly accessible website resources such as HTML, CSS, JavaScript, images and fonts, then rewrites supported links so the downloaded copy can be browsed offline.

Use it for websites you own or have explicit permission to archive. Respect copyright, terms of service and `robots.txt`.

## Features
- Single page or full crawl
- CSS, JS, images, fonts and media downloads
- Smart link rewriting
- Threaded downloads
- `robots.txt` aware
- Form detector (information only)
- CTRL+C safe
- Termux friendly
- No pip dependencies

## Installation

Set your GitHub repository:

```bash
export SHADOW_X_REPO="YOUR_GITHUB_USERNAME/SHADOW-X-WEB-RIPPER"
```

Then:

```bash
curl -fsSL "https://raw.githubusercontent.com/$SHADOW_X_REPO/main/install.sh" | bash
```

Or download/clone this project and run:

```bash
bash install.sh
```

## Usage

```bash
shadowxrip
shadowxrip https://example.com --single
shadowxrip https://example.com
shadowxrip https://example.com -d 2 -p 50
shadowxrip https://example.com -o my_copy -t 12
```

### Options

| Flag | Description | Default |
|---|---|---|
| `--single` | Rip one page only | off |
| `-d, --depth` | Crawl depth (`0` = single page) | `1` |
| `-p, --max-pages` | Max pages to save | `20` |
| `-o, --output` | Output folder | `./<host>_rip` |
| `-t, --threads` | Download threads | `8` |
| `-q, --quiet` | Less output | off |

## Uninstall

```bash
bash uninstall.sh
```

## Authorized-use notice

Only download websites and resources you own or have explicit permission to copy. Do not use this tool to bypass authentication, access controls, paywalls, or other technical restrictions.
