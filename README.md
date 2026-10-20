# Claude Day Starter

Start each workday with Claude already across your inbox. Three short setups, about 30 minutes in total:

1. **Connect your email and calendar** to Claude, whichever provider you use.
2. **A morning brief**: a scheduled task that reads your inbox and calendar each weekday morning and tells you what needs you, on one page that updates in place.
3. **A To-Do list**: a private page you add to by chatting (`/todo call the bank`), which also shows up in your morning brief.

Prefer buttons to copy and paste? The same steps are on the [Claude Day Starter page](https://claude.ai/artifact/QeUZPogLcqqaQAbTtzMSJv), which fills your details into each prompt for you.

## Before you start

- A paid Claude plan (Pro, Max, Team or Enterprise). Scheduled tasks and skills need one.
- **Code execution and file creation** switched on: Settings, then Capabilities. The To-Do list needs it. On a Team or Enterprise plan, your Claude administrator controls this.
- **The Claude app on your phone**, signed in, with notifications allowed, if you want a ping when your brief is ready.
- Do every step in a **normal chat, not inside a Project**. Anything created inside a shared Project belongs to everyone in it.

## 1. Connect your email and calendar (about 5 minutes)

| Your email | Connector to add |
|---|---|
| Gmail or Google Workspace | **Gmail** and **Google Calendar** |
| A work or school Microsoft account (Outlook through your employer) | **Microsoft 365**. Your organisation's IT administrator may need to approve it the first time |
| A personal Outlook.com or Hotmail address | The Microsoft 365 connector does not support personal Microsoft accounts. Claude checks what is available for you when you run the prompt below |
| Something else | Claude checks the connectors available to you |

Paste this into a new chat. Claude takes you through it one step at a time.

```text
Help me connect my email and calendar to Claude so a morning brief can read them. Take me through it one step at a time, and wait for me to say "done" before giving me the next step. Keep each step short and plain.

Step 1. Ask me which email I use: Gmail or Google Workspace, a work or school Microsoft 365 account, a personal Outlook.com or Hotmail address, or something else.

Step 2. Tell me where to find connectors (Customize, then Connectors; in some versions Settings, then Connectors) and which ones to add for my answer: Gmail and Google Calendar for Gmail or Google Workspace, or Microsoft 365 for a work or school Microsoft account. For a personal Outlook.com or Hotmail address, or anything else, check which connectors are available to me and tell me plainly whether any of them can read my inbox and calendar. If none can, say so and stop.

Step 3. Walk me through connecting it, signing in and allowing access. If I see a message saying an administrator must approve it, explain that my organisation's IT administrator has to approve the connection first, and stop there.

Step 4. Check it works: list the senders and subjects of my three most recent emails, and tell me my next calendar event.
```

## 2. Set up your morning brief (about 10 minutes)

Replace the three parts in square brackets, then paste this into a new chat. The time zone line matters: without it, a brief that runs early in the morning can work from the UTC date, which is still yesterday in Australia.

```text
Set up a scheduled task called "Morning brief" that runs every weekday at [time, e.g. 6:30am] in my local time, [your time zone, e.g. Perth, Western Australia (AWST, UTC+8, no daylight saving)]. Use the following as its instructions.

Time zone, before anything else: I am in [your time zone, e.g. Perth, Western Australia (AWST, UTC+8, no daylight saving)]. Each time you run, first work out today's date and day of the week in my local time from the current UTC time. Use that local date for "today", "tomorrow", "the last working day" and "Monday" everywhere below. Never use the UTC date: when this runs early in the morning, it can still be the previous day in UTC.

Each time you run, use my connected email and calendar to build my morning brief with these sections:

1. Unanswered emails. Emails received since the last working day that are waiting on a reply from me. For each: who it is from, what they want, and how urgent it is. On a Monday, go back to Friday morning.

2. Priority actions. Anything in those emails that needs a decision, a response or an action from me today, most urgent first. Put anything with a deadline today or tomorrow at the top.

3. Today's calendar. My meetings for the day, with anything I should read or prepare beforehand.

Keep it short enough to read on my phone in two minutes. Leave out newsletters, automated notifications and anything I am only copied on, unless it is urgent. Do not draft or send any replies. If a section has nothing in it, say so in one line.

Where to put it:
- Keep one page only. Look in my artifacts for the one titled "Morning Brief". If it exists, read it first, then update that same artifact in place so its link stays the same. Do not create a new artifact. Create one titled "Morning Brief" only if none exists.
- Put today's day and date at the top (my local time, DD/MM/YYYY), then today's brief.
- Underneath, keep a section called "Previous briefs". Before you replace today's content, move the brief that was on the page into that section under its own date, newest first. Keep the last five and remove anything older.
- Show each previous brief folded away, so only its date and a one-line summary show until I open it.
- If the page already holds a brief for today, replace it. Do not add a second copy to "Previous briefs".

Send a push notification to my phone when the brief is ready.
```

Then open **Scheduled** in the left sidebar, run the task once now, open the page it makes, and **bookmark that page in your browser**. The same page updates every morning. It holds summaries of your own email, so keep the link to yourself.

To change the time, the days or the sections later, open **Scheduled**, then your Morning brief task, and edit it in plain English.

## 3. Set up your To-Do list (about 10 minutes)

Paste this into a new chat. Claude takes you through it one step at a time.

```text
Please help me install the To-Do list from https://github.com/Scail-au/claude-day-starter into my Claude account. Take me through it one step at a time, and wait for me to say "done" before giving me the next step. Keep each step short and plain.

Step 1. Settings check. Tell me where to find "Code execution and file creation" in my settings and ask me to make sure it is on. If I can't turn it on, tell me to ask whoever manages my Claude account, and stop there.

Step 2. Download. Give me this link to click: https://github.com/Scail-au/claude-day-starter/releases/latest/download/todo-skill.zip
Tell me to keep the file as a .zip and not open it. If I'm on a Mac and it turned into a folder called "todo", tell me to right-click that folder and choose Compress, then use the todo.zip that makes.

Step 3. Upload. Walk me through adding it to my own skills, in my personal settings: Customize, then Skills (in some versions it is Settings, then Capabilities, then Skills). Upload the zip and make sure the skill is switched on. If my account is on a company plan (Team or Enterprise), tell me to add it just for me, not as a skill shared with my whole organisation: it's my personal to-do list, so it only needs to be in my account.

Step 4. Finish. Tell me to open a new chat that is not inside a Project, and type: /todo setup
Explain why: a To-Do page created inside a shared Project belongs to everyone in that Project, so a normal chat keeps the list private to me. Then explain that this creates my To-Do page, lets me choose its colours (including my company's), and, if I have a scheduled morning brief, offers to add my to-do list to it.

If you can open the README at the link above, use it to answer my questions along the way.
```

When `/todo setup` offers to add your list to your morning brief, say **yes**. Then run your brief once more: it now shows your open items and a link to your To-Do page.

### Using the To-Do list

| You type | What happens |
|---|---|
| `/todo call the bank` | Adds "call the bank" to your list |
| `/todo` | Shows what's still open |
| `tick off call the bank` | Ticks it off |
| `/todo colours` | Changes the page's colours, or matches your company's |
| `/todo brief` | Adds your list to your scheduled morning brief |

Plain phrases work too, such as "add the quote for Smith to my to-do" or "what's on my list?".

## Your data

- Everything stays in your own Claude account: the brief page, the to-do list and the scheduled task. Only you can see the list, even if someone has the page link.
- Claude reads your email and calendar only through the connector you approve, and you can disconnect it any time under Connectors.
- The kit adds no other apps, accounts or subscriptions, and sends nothing to any other service.

## Remove it

1. **Brief:** delete the Morning brief task under Scheduled, then delete the "Morning Brief" page from your artifacts.
2. **To-Do list:** delete the skill under Customize, Skills, then delete the "My To-Do List" page from your artifacts. This permanently deletes the list.
3. **Email:** disconnect the connector under Connectors.

## For maintainers

The release file is the `todo` folder zipped. Build it with PowerShell 7:

```powershell
pwsh ./build-release.ps1
```

On a Mac, from the repository folder:

```bash
mkdir -p dist && zip -r dist/todo-skill.zip todo
```

Attach `dist/todo-skill.zip` to a new GitHub release, named exactly `todo-skill.zip` so the download link keeps working. The `todo` skill is the same one published in [claude-todo-kit](https://github.com/Scail-au/claude-todo-kit); update both together.

---

A free kit from Scáil · [scail.au](https://scail.au)
© 2026 Lagantyne Pty Ltd trading as Scail Masters. All rights reserved.
