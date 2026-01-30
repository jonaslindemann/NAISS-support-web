---
tags:
  - login
  - access
  - log in 
search:
  boost: 3
---

# Login

Here we describe the multiple ways to log in to Dardel.

The goal of this page is to help and redirect you to your favorite way to login.

Your favorite way to login depends mostly on which environment you prefer:

<!-- markdownlint-disable MD013 --><!-- Tables cannot be split up over lines, hence will break 80 characters per line -->

Parameter             |Console environment                |Desktop environment
----------------------|-----------------------------------|-----------------------------------
Screenshot            |![Console](console_environment.png)|![Desktop](desktop_environment.png)
Features              |Powerful                           |Intuitive, beginner-friendly
Program type needed   |SSH client                         |ThinLinc client
Example program names |`Terminal`, MobaXterm              |ThinLinc
Requires installation?|Probably                           |Most likely
Documentation         |[Documentation](ssh_login.md)      |[Documentation](interactive_hpc.md)

<!-- markdownlint-enable MD013 -->

Here is a decision tree, to determine which way to log in:

```mermaid
flowchart TD
  need_gui(Need to run a graphical program?)
  comfortable_with_terminal(Are you comfortable in a terminal?)
  use_terminal[Use a terminal]
  use_thinlinc[Use a local ThinLinc client]

  need_gui --> |no| comfortable_with_terminal
  comfortable_with_terminal --> |yes| use_terminal
  comfortable_with_terminal --> |no| use_thinlinc
  need_gui --> |yes| use_thinlinc
```

The procedures can be found at:

- [Login to the Dardel console environment](ssh_login.md)
- [Login to the Dardel remote desktop environment](interactive_hpc.md)
