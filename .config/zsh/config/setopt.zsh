# History
setopt append_history           # Allow multiple sessions to append to one Zsh command history.
setopt extended_history         # Show timestamp in history.
setopt hist_expire_dups_firs    # Expire A duplicate event first when trimming history.
setopt hist_find_no_dups        # Do not display a previously found event.
setopt hist_ignore_all_dups     # Remove older duplicate entries from history.
setopt hist_ignore_dups         # Do not record an event that was just recorded again.
setopt hist_ignore_space        # Do not record an Event Starting With A Space.
setopt hist_reduce_blanks       # Remove superfluous blanks from history items.
setopt hist_save_no_dups        # Do not write a duplicate event to the history file.
setopt hist_verify              # Do not execute immediately upon history expansion.
setopt inc_append_history       # Write to the history file immediately, not when the shell exits.
setopt share_history            # Share history between different instances of the shell.

# Other tweaks
setopt auto_cd                  # Use cd by typing directory name if it's not a command.
setopt auto_list                # Automatically list choices on ambiguous completion.
setopt auto_pushd               # Make cd push the old directory onto the directory stack.
setopt bang_hist                # Treat the '!' character, especially during Expansion.
setopt interactive_comments     # Comments even in interactive shells.
setopt multios                  # Implicit tees or cats when multiple redirections are attempted.
setopt no_beep                  # Don't beep on error.
setopt prompt_subst             # Substitution of parameters inside the prompt each time the prompt is drawn.
setopt pushd_ignore_dups        # Don't push multiple copies directory onto the directory stack.
setopt pushd_minus              # Swap the meaning of cd +1 and cd -1 to the opposite.

autoload -U colors && colors    # Load Colors.
unsetopt case_glob              # Use Case-Insensitve Globbing.
setopt globdots                 # Glob Dotfiles As Well.
setopt extendedglob             # Use Extended Globbing.

# Smart URLs.
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

# General.
setopt brace_ccl                # Allow Brace Character Class List Expansion.
setopt combining_chars          # Combine Zero-Length Punctuation Characters ( Accents ) With The Base Character.
setopt rc_quotes                # Allow 'Henry''s Garage' instead of 'Henry'\''s Garage'.
unsetopt mail_warning           # Don't Print A Warning Message If A Mail File Has Been Accessed.

# Jobs.
setopt long_list_jobs           # List Jobs In The Long Format By Default.
setopt auto_resume              # Attempt To Resume Existing Job Before Creating A New Process.
setopt notify                   # Report Status Of Background Jobs Immediately.
unsetopt bg_nice                # Don't Run All Background Jobs At A Lower Priority.
unsetopt hup                    # Don't Kill Jobs On Shell Exit.
unsetopt check_jobs             # Don't Report On Jobs When Shell Exit.

setopt correct                  # Turn On Corrections

# Completion Options.
setopt complete_in_word         # Complete From Both Ends Of A Word.
setopt always_to_end            # Move Cursor To The End Of A Completed Word.
setopt path_dirs                # Perform Path Search Even On Command Names With Slashes.
setopt auto_menu                # Show Completion Menu On A Successive Tab Press.
setopt auto_param_slash         # If Completed Parameter Is A Directory, Add A Trailing Slash.
setopt no_complete_aliases

setopt menu_complete            # Do Not Autoselect The First Completion Entry.
unsetopt flow_control           # Disable Start/Stop Characters In Shell Editor.