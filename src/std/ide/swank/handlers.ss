(import
  :std/misc/string
  :std/sugar
  :gerbil/gambit

  ./api
  ./message
  ./presentation
  ./top)
(export #t)

(def-swank (:emacs-rex form package thread id)
  (call-with-current-continuation
   (lambda (exit)
     (parameterize ((current-swank-exit-emacs-rex exit)
                    (current-slime-package package)
                    (current-slime-thread thread)
                    (current-slime-id id))
       (try
  	(let (handler (hash-get swank-message-handlers (car form)))
  	  (if handler
  	    `(:return (:ok ,(apply handler (cdr form))) ,id)
  	    (error "No Handler Found" form)))
  	(catch (e)
  	  `(:return (:abort ,(call-with-output-string (cut display-exception e <>))) ,id)))))))

(def-swank (swank:connection-info)
  `(:pid
    ,(##os-getpid)
    :style :spawn
    :encoding (:coding-systems ("utf-8-unix"))
    :lisp-implementation (:type
  			  "Scheme"
  			  :name "gerbil"
  			  :version ,(gerbil-version-string)
  			  :program ,(swank-lisp-implementation:program))
    :machine (:instance ,(##host-name)
  	      :type ,(swank-machine:type)
  	      :version ,(swank-machine:version))
    :features (:swank)
    :modules ,(swank-modules)
    :package (:name "TOP" :prompt "TOP")
    :version "2.29.1"))

(def-swank (swank:swank-require modules) (swank-modules))
(def-swank (swank-repl:create-repl nil . plist) '("TOP" "TOP"))
