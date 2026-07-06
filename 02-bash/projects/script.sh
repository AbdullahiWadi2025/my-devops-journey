#!/bin/bash

echo "===================================="
echo "      SYSTEM HEALTH CHECK TOOL"
echo "===================================="
echo ""

echo "📅 Date:"
date
echo ""

echo "🖥️ System Uptime:"
uptime
echo ""

echo "💾 Disk Usage:"
df -h
echo ""

echo "👤 Logged in users:"
who
echo ""

echo "⚙️ Top running processes:"
ps -e --sort=-%mem | head -5
echo ""

echo "===================================="
echo "   CHECK COMPLETE - DEVOPS MODE 🚀"
echo "===================================="
