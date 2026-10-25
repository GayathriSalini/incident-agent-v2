# Incident agent v2 (GA3 Q4)

Public HTTPS incident agent: `POST /v2/incidents`, `POST /v2/incidents/{runId}/receipts`, `GET /v2/incidents/{runId}`.

* `server.mjs`  – HTTP, persistent receipt-driven state machine, OTLP trace builder
* `planner.mjs` – planning layer (model call + validation + fallbacks)
* `rules.mjs`   – reads the decisive evidence lines and builds exact tool arguments
* `sim.mjs`     – grader simulator / conformance checker (`node sim.mjs http://localhost:8020`, add `--real` to replay saved incidents)

No dependencies. Node >= 20.

Run locally: put `GROQ_API_KEY=...` in `.env`, then `./run.sh` (port 8020).

Render: build command empty, start command `node server.mjs`, env `LLM_KEY` (Groq key), `NODE_VERSION=20`.
Optional env: `LLM_MODELS`, `DATA_DIR`, `INPUT_DIR`, `ACCESS_LOG`, `PORT` (Render sets it).
