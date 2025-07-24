(in-package :cl-liballegro)

;;; Keyboard
(defcfun ("al_install_keyboard" install-keyboard) :boolean)
(defcfun ("al_is_keyboard_installed" is-keyboard-installed) :boolean)
(defcfun ("al_uninstall_keyboard" uninstall-keyboard) :void)
(defcfun ("al_get_keyboard_state" get-keyboard-state) :void (ret-state :pointer))
(defcfun ("al_clear_keyboard_state" clear-keyboard-state) :void (display :pointer))
(defcfun ("al_key_down" key-down) :boolean (state :pointer) (keycode keycodes))
(defcfun ("al_keycode_to_name" keycode-to-name) :string (keycode keycodes))
(defcfun ("al_can_set_keyboard_leds" can-set-keyboard-leds) :boolean)
(defcfun ("al_set_keyboard_leds" set-keyboard-leds) :boolean (leds keymods))
(defcfun ("al_get_keyboard_event_source" get-keyboard-event-source) :pointer)
