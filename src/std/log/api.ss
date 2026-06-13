;;; -*- Gerbil -*-
;;; © vyzo
;;; logger user api
(import ./interface
        ./level
        ./user
        ./macros
        ./default
        ./console
        ./system
        ./rotate)
(export (import: ./interface
                 ./level
                 ./user
                 ./macros
                 ./default
                 ./console
                 ./rotate)
        add-system-sink!
        set-system-log-level!
        set-source-log-level!
        set-sink-log-level!
        current-log-sources
        current-log-sinks)
