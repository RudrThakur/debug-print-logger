// ignore_for_file: constant_identifier_names

const Map<String, String> ANSI_COLOR_CODES = {
  /// Regular Pallete
  "reset": "\x1B[0m",
  "black": "\x1B[30m",
  "white": "\x1B[37m",
  "red": "\x1B[31m",
  "green": "\x1B[32m",
  "yellow": "\x1B[33m",
  "blue": "\x1B[34m",
  "cyan": "\x1B[36m",
  "magenta": "\x1B[35m",

  /// Bright Pallete
  "bright_red": "\x1B[31;1m",
  "bright_green": "\x1B[32;1m",
  "bright_cyan": "\x1B[36;1m",
  "bright_yellow": "\x1B[33;1m",
  "bright_white": "\x1B[37;1m",

  /// Backgound Pallete
  "background_bright_white": "\x1B[47;1m"
};