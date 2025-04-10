;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/actor-v18/proto
        ./util
        ./control)
(export #t)

;;; gerbil ensemble list
(def (do-list-connections opt)
  (let* ((server-id (hash-ref opt 'server-id))
         (list-connections
          (if (hash-get opt 'supervised)
            (let (supervisor (or (hash-get opt 'supervisor)
                                 (ensemble-domain-supervisor)))
              (lambda (srv)
                (let (result (ensemble-supervisor-invoke!
                              supervisor: supervisor
                              actor: (reference server-id 0)
                              message: (!list-connections (server-identifier server-id))
                              actor-server: srv))
                  (write-result opt result))))
            (lambda (srv)
              (let (result (remote-list-connections server-id srv))
                (write-result opt result))))))
    (call-with-console-server opt list-connections)))

(def (do-list-actors opt)
  (let* ((server-id (hash-ref opt 'server-id))
         (write-result
          (lambda (opt result)
            (write-result opt (map reference-actor result))))
         (list-actors
          (if (hash-get opt 'supervised)
            (let (supervisor (or (hash-get opt 'supervisor)
                                 (ensemble-domain-supervisor)))
              (lambda (srv)
                (let (result (ensemble-supervisor-invoke!
                              supervisor: supervisor
                              actor: (reference server-id 0)
                              message: (!list-actors (server-identifier server-id))
                              actor-server: srv))
                  (write-result opt result))))
            (lambda (srv)
              (let (result (remote-list-connections server-id srv))
                (write-result opt result))))))
    (call-with-console-server opt list-actors)))

(def (do-list-servers opt)
  (if (hash-get opt 'supervised)
    (do-control-list-servers opt)
    (call-with-console-server opt
      (lambda (srv)
        (let (result (ensemble-list-servers srv))
          (write-result opt result))))))
