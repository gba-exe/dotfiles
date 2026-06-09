# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/projects/sptech/rp"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "rp"; then

  new_window "nvim"

  new_window "execution"

  new_window "terminal"

  select_window "1"
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
