(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709038442)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath77795_ _reload?77796_)
        (let ((_$e77798_
               (if (let () (declare (not safe)) (not _reload?77796_))
                   (let ((__tmp77817 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp77817 _modpath77795_))
                   '#f)))
          (if _$e77798_
              _$e77798_
              (let ((_$e77801_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath77795_))))
                (if _$e77801_
                    ((lambda (_path77804_)
                       (let ((_lpath77806_ (load _path77804_)))
                         (let ((__tmp77818 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp77818 _modpath77795_ _lpath77806_))
                         _lpath77806_))
                     _$e77801_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath77795_))))))))
    (define load-module__0
      (lambda (_modpath77811_)
        (let ((_reload?77813_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath77811_ _reload?77813_))))
    (define load-module
      (lambda _g77820_
        (let ((_g77819_ (let () (declare (not safe)) (##length _g77820_))))
          (cond ((let () (declare (not safe)) (##fx= _g77819_ 1))
                 (apply (lambda (_modpath77811_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath77811_)))
                        _g77820_))
                ((let () (declare (not safe)) (##fx= _g77819_ 2))
                 (apply (lambda (_modpath77815_ _reload?77816_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath77815_ _reload?77816_)))
                        _g77820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g77820_))))))
    (define find-library-module
      (lambda (_modpath77729_)
        (letrec ((_find-compiled-file77731_
                  (lambda (_npath77783_)
                    (let ((_basepath77785_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath77783_ '".o"))))
                      (let _lp77787_ ((_current77789_ '#f) (_n77790_ '1))
                        (let ((_next77792_
                               (let ((__tmp77821 (number->string _n77790_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath77785_
                                  __tmp77821))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next77792_))
                              (let ((__tmp77822
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n77790_ '1))))
                                (declare (not safe))
                                (_lp77787_ _next77792_ __tmp77822))
                              _current77789_))))))
                 (_find-source-file77732_
                  (lambda (_npath77779_)
                    (let ((_spath77781_ (string-append _npath77779_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath77781_))
                          _spath77781_
                          '#f)))))
          (let _lp77734_ ((_rest77736_ (current-module-library-path)))
            (let* ((_rest7773777745_ _rest77736_)
                   (_else7773977753_ (lambda () '#f))
                   (_K7774177767_
                    (lambda (_rest77756_ _dir77757_)
                      (let* ((_npath77759_
                              (path-expand
                               _modpath77729_
                               (path-expand _dir77757_)))
                             (_$e77761_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77731_ _npath77759_))))
                        (if _$e77761_
                            (path-normalize _$e77761_)
                            (let ((_$e77764_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77732_ _npath77759_))))
                              (if _$e77764_
                                  (path-normalize _$e77764_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77734_ _rest77756_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7773777745_))
                  (let ((_hd7774277770_
                         (let ()
                           (declare (not safe))
                           (##car _rest7773777745_)))
                        (_tl7774377772_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7773777745_))))
                    (let* ((_dir77775_ _hd7774277770_)
                           (_rest77777_ _tl7774377772_))
                      (declare (not safe))
                      (_K7774177767_ _rest77777_ _dir77775_)))
                  (let () (declare (not safe)) (_else7773977753_))))))))))
