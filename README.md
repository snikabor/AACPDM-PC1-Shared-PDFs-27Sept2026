# AACPDM PC1 — Shared PDFs

Public share folder for AACPDM PC1 attendees.

- **Live site:** https://snikabor.github.io/AACPDM-PC1-Shared-PDFs-27Sept2026/
- **Expires:** 2026-10-12 (repo auto-privatizes, link 404s after that)
- **License:** All PDFs are Creative Commons, publicly accessible, or authored by the repo owner.

## How to add / remove PDFs

```bash
cd ~/.openclaw/workspace/AACPDM-PC1-Shared-PDFs-27Sept2026
cp /path/to/new.pdf pdfs/
git add pdfs/ && git commit -m "add new.pdf" && git push
```

The site auto-lists every `.pdf` in `pdfs/` — no HTML edits needed.
