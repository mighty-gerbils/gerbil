(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassPrecedenceList::timestamp 1712084991)
  (begin
    (define gerbil/core/contract~ClassPrecedenceList#_g79952_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g79953_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g79955_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g79956_
      (##structure
       gx#syntax-quote::t
       ':t
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#_g79957_
      (##structure
       gx#syntax-quote::t
       ':object
       #f
       (gx#current-expander-context)
       '()))
    (define gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
      (lambda (_%klass51579%_)
        (let ((_%$e51581%_
               (let ((__obj79896 _%klass51579%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj79896
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj79896 '5 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj79896
                      'precedence-list)))))
          (if _%$e51581%_
              _%$e51581%_
              (let ()
                (let ((_g79948_
                       (c4-linearize
                        '()
                        (let ((__obj79897 _%klass51579%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj79897
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj79897
                                 '3
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj79897
                               'super)))
                        'get-precedence-list:
                        (lambda (_%klass-id51585%_)
                          (cons _%klass-id51585%_
                                (let ((__tmp79950
                                       (gx#syntax-local-value
                                        _%klass-id51585%_)))
                                  (declare (not safe))
                                  (gerbil/core/contract~ClassPrecedenceList#!class-precedence-list
                                   __tmp79950))))
                        'struct:
                        (lambda (_%klass-id51587%_)
                          (let ((__obj79898
                                 (gx#syntax-local-value _%klass-id51587%_)))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj79898
                                   'gerbil.core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj79898
                                   '7
                                   '#f
                                   '#f))
                                (class-slot-ref
                                 gerbil/core/mop~MOP-2#class-type-info::t
                                 __obj79898
                                 'struct?))))
                        'eq:
                        gx#free-identifier=?
                        'get-name:
                        gx#stx-e)))
                  (begin
                    (let ((_g79949_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g79948_)
                                 (##vector-length _g79948_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g79949_ 2)))
                          (error "Context expects 2 values" _g79949_)))
                    (let ((_%precedence-list51589%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g79948_ 0)))
                          (_%base-struct51590%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g79948_ 1))))
                      (let ((_%precedence-list51634%_
                             (if (let ((__tmp79951
                                        (let ((__obj79899 _%klass51579%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj79899
                                                 'gerbil.core#class-type-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj79899
                                                 '1
                                                 '#f
                                                 '#f))
                                              (class-slot-ref
                                               gerbil/core/mop~MOP-2#class-type-info::t
                                               __obj79899
                                               'id)))))
                                   (declare (not safe))
                                   (##memq __tmp79951 '(t object class)))
                                 (let () _%precedence-list51589%_)
                                 (if (member gerbil/core/contract~ClassPrecedenceList#_g79952_
                                             _%precedence-list51589%_
                                             gx#free-identifier=?)
                                     (let () _%precedence-list51589%_)
                                     (if (let ((__obj79900 _%klass51579%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj79900
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj79900
                                                  '9
                                                  '#f
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop~MOP-2#class-type-info::t
                                                __obj79900
                                                'system?)))
                                         (let ()
                                           (if (member gerbil/core/contract~ClassPrecedenceList#_g79953_
                                                       _%precedence-list51589%_
                                                       gx#free-identifier=?)
                                               _%precedence-list51589%_
                                               (let ((__tmp79954
                                                      (cons gerbil/core/contract~ClassPrecedenceList#_g79953_
                                                            '())))
                                                 (declare (not safe))
                                                 (##append
                                                  _%precedence-list51589%_
                                                  __tmp79954))))
                                         (let ()
                                           (let _%loop51596%_ ((_%tail51598%_
                                                                _%precedence-list51589%_)
                                                               (_%head51599%_
                                                                '()))
                                             (let* ((_%tail5160051608%_
                                                     _%tail51598%_)
                                                    (_%else5160251616%_
                                                     (lambda ()
                                                       (foldl cons
                                                              (cons gerbil/core/contract~ClassPrecedenceList#_g79955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gerbil/core/contract~ClassPrecedenceList#_g79956_
                                  '()))
                      _%head51599%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%K5160451622%_
                                                     (lambda (_%rest51619%_
                                                              _%hd51620%_)
                                                       (if (gx#free-identifier=?
                                                            _%hd51620%_
                                                            (gx#datum->syntax
                                                             '#f
                                                             ':t))
                                                           (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gerbil/core/contract~ClassPrecedenceList#_g79957_
                                _%tail51598%_)
                          _%head51599%_)
                   (let ((__tmp79958 (cons _%hd51620%_ _%head51599%_)))
                     (declare (not safe))
                     (_%loop51596%_ _%rest51619%_ __tmp79958))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _%tail5160051608%_))
                                                   (let ((_%hd5160551625%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%tail5160051608%_)))
                                                         (_%tl5160651627%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%tail5160051608%_))))
                                                     (let* ((_%hd51630%_
                                                             _%hd5160551625%_)
                                                            (_%rest51632%_
                                                             _%tl5160651627%_))
                                                       (declare (not safe))
                                                       (_%K5160451622%_
                                                        _%rest51632%_
                                                        _%hd51630%_)))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%else5160251616%_)))))))))))
                        (let ((__obj79901 _%klass51579%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj79901
                                 'gerbil.core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 __obj79901
                                 _%precedence-list51634%_
                                 '5
                                 '#f
                                 '#f))
                              (class-slot-set!
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj79901
                               'precedence-list
                               _%precedence-list51634%_)))
                        _%precedence-list51634%_)))))))))))
