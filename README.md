# Moggit 🤫🧏

Moggit is your friendly neighbourhood Git helper and alias collection.
It makes writing commit messages easier, more consistent, and more fun.
It also gives you a bunch of shortcuts for common Git commands.

<img src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExanByZ2tsYzhlcHRhaHdrYnJkdDhoeXZidnM4ZmhnMW0zdGJtNnFoeiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/qEa2K2EU0BH7arjq0h/giphy.gif" width="275" align="right" />

---

### Features

- Interactive commit helper (`mog`) with:
  - Pick a commit type (`feat`, `fix`, `docs`, etc.)
  - Optional scope
  - Summary with automatic trimming option
  - Confirmation before committing
- Fun aliases for everyday Git commands
- Easy installation and setup

---

### Installation

1. Clone the repo:

```bash
git clone https://github.com/yourusername/moggit.git
cd moggit
```

2. Run the installer:

```bash
bash install.sh
```

3. Restart your terminal or source your shell config:

```bash
source ~/.bashrc   # or ~/.zshrc
```

4. Start committing smarter and faster.

---

### Usage

### Moggit commit helper

Run:

```bash
mog
```

Follow the prompts to:

1. Select a commit type (`feat`, `fix`, `docs`, etc.)
2. Add an optional scope (area of modification)
3. Enter a short summary (will prompt if too long)
4. Confirm before the commit goes through

---

### Brainrot Git Aliases Cheat Sheet

| Alias      | Git Command                                         | Description                             |
|------------|-----------------------------------------------------|-----------------------------------------|
| `yeet`     | `git add`                                           | Stage a specific file                   |
| `yeetall`  | `git add .`                                         | Stage all changes                       |
| `skrrt`    | `git commit -m`                                     | Commit with a message                   |
| `receipts` | `git log`                                           | Show commit history                     |
| `rewind`   | `git restore --staged`                              | Unstage changes                         |
| `oopsie`   | `git commit --amend`                                | Fix your last commit                    |
| `cleanse`  | `git reset --hard`                                  | Reset everything                        |
| `sendit`   | `git push`                                          | Push your changes                       |
| `gimme`    | `git pull`                                          | Pull the latest changes                 |
| `bigback`  | `git add . && git commit -m "quick fix" && git push`| Quick add, commit & push                |
| `newhuzz`  | `git checkout -b`                                   | Make a new branch and switch to it      |
| `dump`     | `git push && git branch -d`                         | Push & delete a branch                  |
| `spill`    | `git status`                                        | See what’s going on                     |
| `aura`     | `git log --pretty=oneline --graph --decorate`       | Fancy log view                          |
| `packitup` | `git stash`                                         | Stash changes for later                 |
| `cook`     | `git diff`                                          | See what changed                        |
| `mog`      | `./moggit.sh`                                       | Launch moggit interactive commit helper |

---
<img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExMHFqbzN6Z2EyNnl5c3NhZnl2aGMxN21wNm5rMG5pdXdkNm5rZzR4diZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/WGkhN8KKOC4tW/giphy.gif" align="right" />

> Git the code, Git the code,  
Do whatever commits you can.  
Add a file, stage it right,  
Push it up all through the pipe.  
Look out! It's time to Git your code!  

> Branch away, any size,  
Merge requests, no surprise.  
Tracks your code just like thread,  
Keeps you safe from going dead.  
Hey there! It's time to Git your code!  

> In the repo life is hard,  
Conflicts sneak in like a card,  
But whenever there’s commits,  
Gitting code will handle it!  

