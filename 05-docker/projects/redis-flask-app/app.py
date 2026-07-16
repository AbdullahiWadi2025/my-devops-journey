from flask import Flask
from counter import increment_visits
import socket

app = Flask(__name__)


@app.route("/")
def home():
    return """
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DevOps Platform</title>
        <link rel="stylesheet" href="/static/style.css">
    </head>
    <body>
        <div class="crt"></div>
        <div class="terminal">
            <div class="terminal-bar">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="terminal-title">ops@devops-platform:~</span>
            </div>

            <div class="terminal-body">
                <p class="line prompt">whoami</p>
                <h1 class="output-title">DevOps Project<span class="cursor">&#9608;</span></h1>
                <p class="output-sub">
                    A containerized Flask application powered by Docker, Redis, and Nginx.
                </p>

                <p class="comment"># "DevOps is not just about tools. It's about building reliable systems that scale."</p>
                <p class="comment"># "Automation turns repeated tasks into reliable engineering processes."</p>

                <p class="line prompt">ls stack/</p>
                <div class="stack">
                    <span class="chip">docker</span>
                    <span class="chip">flask</span>
                    <span class="chip">redis</span>
                    <span class="chip">nginx</span>
                </div>

                <a href="/count" class="run-btn">$ ./view-dashboard.sh</a>
            </div>
        </div>
    </body>
    </html>
    """


@app.route("/count")
def count():
    visits = increment_visits()
    hostname = socket.gethostname()

    return f"""
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>DevOps Dashboard</title>
        <link rel="stylesheet" href="/static/style.css">
    </head>
    <body>
        <div class="crt"></div>
        <div class="terminal">
            <div class="terminal-bar">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="terminal-title">ops@devops-platform:~</span>
            </div>

            <div class="terminal-body">
                <p class="line prompt">curl -s /health</p>

                <div class="counter-box">
                    <span class="counter-label">total_visitors</span>
                    <span class="counter-value">{visits}<span class="cursor">&#9608;</span></span>
                </div>

                <div class="status-log">
                    <div class="status-row"><span>container</span><strong>{hostname}</strong></div>
                    <div class="status-row"><span>redis</span><strong class="ok">&#9679; connected</strong></div>
                    <div class="status-row"><span>nginx</span><strong class="ok">&#9679; active</strong></div>
                    <div class="status-row"><span>docker</span><strong class="ok">&#9679; running</strong></div>
                </div>

                <a href="/" class="run-btn">$ cd ~</a>
            </div>
        </div>
    </body>
    </html>
    """


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)