---
layout: project
title: ROAR Day URL Creator
permalink: /projects/roarday-url-creator
authors:
- Adrian Edwards
excerpt: >
    TeleIRC bridges communication between Telegram groups and IRC channels.
    This bot was originally written for the RIT Linux Users Group Telegram group and IRC channel.
    Today, it is used by communities all over the world.
# images:
# - https://ritlug.com/projects/assets/teleirc/logo.svg
---

The ROAR Day URL creator is a small web project built to help ROAR Day ambassadors more easily create donation links to send to their communities during RIT ROAR Day 2024.

{%- comment -%} {% include content-blocks/gallery.html %} {%- endcomment -%}

Prior to the existence of this tool, RIT was using a spreadsheet to store a list of individual links that would automatically pre-fill an organization, department, or club in the ROAR day giving form on the GiveCampus page when clicked. Ambassadors/advocates were then supposed to manually append their unique ID to these URL's so their advocacy was credited to them.

This URL creator is a simple tool built to essentially automate this process for people to make it far more user-friendly. By pulling the list of organizations from the spreadsheet using the google sheets API, the site is able to allow much faster, easier generation of these URLs.

This project was done in collaboration with, and with the support of Victor Santiago from University Advancement.

## Future plans

While there currently aren't too many plans to expand the project, there does seem to be a strong value potentially extend this project to also help cover other RIT advancement campaigns and fundraising efforts.


## Resources and links
* [GitHub repository](https://github.com/MoralCode/AdvancementURLFiller/)
