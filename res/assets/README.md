# README `res/assets/`

All binary (and potentially large text-)resources should go here, as this allows to go "clean-slate" with this data from time to time, to reduce clone size, if done as a git sub-module (which can also be done later). Having it as a git sub-module, also allows to not fetch it at all, if storage or bandwidth is an issue, and it is not required for the task at hand. The sub-dirs within res/assets/ and res/ should be the same (excluding of course res/assets/assets/).

