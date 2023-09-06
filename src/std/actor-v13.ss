;;; -*- Gerbil -*-
;;; (C) vyzo
;;; v13 actor package interface; DEPRECATED.

(import ./deprecation
        ./actor-v13/message
        ./actor-v13/proto
        ./actor-v13/rpc)
(export (import: ./actor-v13/message
                 ./actor-v13/proto
                 ./actor-v13/rpc))

(package-deprecation-warning!)
