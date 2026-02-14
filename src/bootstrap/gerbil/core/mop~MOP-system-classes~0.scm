(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/mop~MOP-system-classes::timestamp 1771037594)
  (begin
    (define gerbil/core/mop~MOP-system-classes#&::time-point
      (lambda (_%obj33868%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33868%_ '1 time::t 'point))))
    (define gerbil/core/mop~MOP-system-classes#&::time-type
      (lambda (_%obj33866%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33866%_ '2 time::t 'type))))
    (define gerbil/core/mop~MOP-system-classes#&::time-second
      (lambda (_%obj33864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33864%_ '3 time::t 'second))))
    (define gerbil/core/mop~MOP-system-classes#&::time-nanosecond
      (lambda (_%obj33862%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33862%_ '4 time::t 'nanosecond))))
    (define gerbil/core/mop~MOP-system-classes#&::time-point-set!
      (lambda (_%obj33859%_ _%val33860%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33859%_
           _%val33860%_
           '1
           time::t
           'point))))
    (define gerbil/core/mop~MOP-system-classes#&::time-type-set!
      (lambda (_%obj33856%_ _%val33857%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33856%_
           _%val33857%_
           '2
           time::t
           'type))))
    (define gerbil/core/mop~MOP-system-classes#&::time-second-set!
      (lambda (_%obj33853%_ _%val33854%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33853%_
           _%val33854%_
           '3
           time::t
           'second))))
    (define gerbil/core/mop~MOP-system-classes#&::time-nanosecond-set!
      (lambda (_%obj33850%_ _%val33851%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33850%_
           _%val33851%_
           '4
           time::t
           'nanosecond))))
    (define gerbil/core/mop~MOP-system-classes#::time-point
      (lambda (_%obj33848%_) (##structure-ref _%obj33848%_ '1 time::t 'point)))
    (define gerbil/core/mop~MOP-system-classes#::time-type
      (lambda (_%obj33846%_) (##structure-ref _%obj33846%_ '2 time::t 'type)))
    (define gerbil/core/mop~MOP-system-classes#::time-second
      (lambda (_%obj33844%_)
        (##structure-ref _%obj33844%_ '3 time::t 'second)))
    (define gerbil/core/mop~MOP-system-classes#::time-nanosecond
      (lambda (_%obj33842%_)
        (##structure-ref _%obj33842%_ '4 time::t 'nanosecond)))
    (define gerbil/core/mop~MOP-system-classes#::time-point-set!
      (lambda (_%obj33839%_ _%val33840%_)
        (##structure-set! _%obj33839%_ _%val33840%_ '1 time::t 'point)))
    (define gerbil/core/mop~MOP-system-classes#::time-type-set!
      (lambda (_%obj33836%_ _%val33837%_)
        (##structure-set! _%obj33836%_ _%val33837%_ '2 time::t 'type)))
    (define gerbil/core/mop~MOP-system-classes#::time-second-set!
      (lambda (_%obj33833%_ _%val33834%_)
        (##structure-set! _%obj33833%_ _%val33834%_ '3 time::t 'second)))
    (define gerbil/core/mop~MOP-system-classes#::time-nanosecond-set!
      (lambda (_%obj33828%_ _%val33830%_)
        (##structure-set! _%obj33828%_ _%val33830%_ '4 time::t 'nanosecond)))
    (define gerbil/core/mop~MOP-system-classes#&::thread-lock1
      (lambda (_%obj33826%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33826%_ '1 thread::t 'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-deq-next
      (lambda (_%obj33824%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33824%_
           '2
           thread::t
           'btq-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-deq-prev
      (lambda (_%obj33822%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33822%_
           '3
           thread::t
           'btq-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-color
      (lambda (_%obj33820%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33820%_ '4 thread::t 'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-parent
      (lambda (_%obj33818%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33818%_ '5 thread::t 'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-left
      (lambda (_%obj33816%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33816%_ '6 thread::t 'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-leftmost
      (lambda (_%obj33814%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33814%_
           '7
           thread::t
           'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-tgroup
      (lambda (_%obj33812%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33812%_ '8 thread::t 'tgroup))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-lock2
      (lambda (_%obj33810%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33810%_ '9 thread::t 'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-color
      (lambda (_%obj33808%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33808%_ '10 thread::t 'toq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-parent
      (lambda (_%obj33806%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33806%_ '11 thread::t 'toq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-left
      (lambda (_%obj33804%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33804%_ '12 thread::t 'toq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-leftmost
      (lambda (_%obj33802%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33802%_
           '13
           thread::t
           'toq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-threads-deq-next
      (lambda (_%obj33800%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33800%_
           '14
           thread::t
           'threads-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-threads-deq-prev
      (lambda (_%obj33798%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33798%_
           '15
           thread::t
           'threads-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-floats
      (lambda (_%obj33796%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33796%_ '16 thread::t 'floats))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-container
      (lambda (_%obj33794%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33794%_
           '17
           thread::t
           'btq-container))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-container
      (lambda (_%obj33792%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33792%_
           '18
           thread::t
           'toq-container))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-name
      (lambda (_%obj33790%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33790%_ '19 thread::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-end-condvar
      (lambda (_%obj33788%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33788%_
           '20
           thread::t
           'end-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-exception?
      (lambda (_%obj33786%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33786%_ '21 thread::t 'exception?))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-result
      (lambda (_%obj33784%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33784%_ '22 thread::t 'result))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-cont
      (lambda (_%obj33782%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33782%_ '23 thread::t 'cont))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv
      (lambda (_%obj33780%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33780%_ '24 thread::t 'denv))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv-cache1
      (lambda (_%obj33778%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33778%_
           '25
           thread::t
           'denv-cache1))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv-cache2
      (lambda (_%obj33776%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33776%_
           '26
           thread::t
           'denv-cache2))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv-cache3
      (lambda (_%obj33774%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33774%_
           '27
           thread::t
           'denv-cache3))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-repl-channel
      (lambda (_%obj33772%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33772%_
           '28
           thread::t
           'repl-channel))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-mailbox
      (lambda (_%obj33770%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33770%_ '29 thread::t 'mailbox))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-specific
      (lambda (_%obj33768%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33768%_ '30 thread::t 'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-resume-thunk
      (lambda (_%obj33766%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33766%_
           '31
           thread::t
           'resume-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-interrupts-head
      (lambda (_%obj33764%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33764%_
           '32
           thread::t
           'interrupts-head))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-interrupts-tail
      (lambda (_%obj33762%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33762%_
           '33
           thread::t
           'interrupts-tail))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-last-processor
      (lambda (_%obj33760%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33760%_
           '34
           thread::t
           'last-processor))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-lock1-set!
      (lambda (_%obj33757%_ _%val33758%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33757%_
           _%val33758%_
           '1
           thread::t
           'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-deq-next-set!
      (lambda (_%obj33754%_ _%val33755%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33754%_
           _%val33755%_
           '2
           thread::t
           'btq-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-deq-prev-set!
      (lambda (_%obj33751%_ _%val33752%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33751%_
           _%val33752%_
           '3
           thread::t
           'btq-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-color-set!
      (lambda (_%obj33748%_ _%val33749%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33748%_
           _%val33749%_
           '4
           thread::t
           'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-parent-set!
      (lambda (_%obj33745%_ _%val33746%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33745%_
           _%val33746%_
           '5
           thread::t
           'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-left-set!
      (lambda (_%obj33742%_ _%val33743%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33742%_
           _%val33743%_
           '6
           thread::t
           'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-leftmost-set!
      (lambda (_%obj33739%_ _%val33740%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33739%_
           _%val33740%_
           '7
           thread::t
           'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-tgroup-set!
      (lambda (_%obj33736%_ _%val33737%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33736%_
           _%val33737%_
           '8
           thread::t
           'tgroup))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-lock2-set!
      (lambda (_%obj33733%_ _%val33734%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33733%_
           _%val33734%_
           '9
           thread::t
           'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-color-set!
      (lambda (_%obj33730%_ _%val33731%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33730%_
           _%val33731%_
           '10
           thread::t
           'toq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-parent-set!
      (lambda (_%obj33727%_ _%val33728%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33727%_
           _%val33728%_
           '11
           thread::t
           'toq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-left-set!
      (lambda (_%obj33724%_ _%val33725%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33724%_
           _%val33725%_
           '12
           thread::t
           'toq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-leftmost-set!
      (lambda (_%obj33721%_ _%val33722%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33721%_
           _%val33722%_
           '13
           thread::t
           'toq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-threads-deq-next-set!
      (lambda (_%obj33718%_ _%val33719%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33718%_
           _%val33719%_
           '14
           thread::t
           'threads-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-threads-deq-prev-set!
      (lambda (_%obj33715%_ _%val33716%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33715%_
           _%val33716%_
           '15
           thread::t
           'threads-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-floats-set!
      (lambda (_%obj33712%_ _%val33713%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33712%_
           _%val33713%_
           '16
           thread::t
           'floats))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-btq-container-set!
      (lambda (_%obj33709%_ _%val33710%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33709%_
           _%val33710%_
           '17
           thread::t
           'btq-container))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-toq-container-set!
      (lambda (_%obj33706%_ _%val33707%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33706%_
           _%val33707%_
           '18
           thread::t
           'toq-container))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-name-set!
      (lambda (_%obj33703%_ _%val33704%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33703%_
           _%val33704%_
           '19
           thread::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-end-condvar-set!
      (lambda (_%obj33700%_ _%val33701%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33700%_
           _%val33701%_
           '20
           thread::t
           'end-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-exception?-set!
      (lambda (_%obj33697%_ _%val33698%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33697%_
           _%val33698%_
           '21
           thread::t
           'exception?))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-result-set!
      (lambda (_%obj33694%_ _%val33695%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33694%_
           _%val33695%_
           '22
           thread::t
           'result))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-cont-set!
      (lambda (_%obj33691%_ _%val33692%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33691%_
           _%val33692%_
           '23
           thread::t
           'cont))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv-set!
      (lambda (_%obj33688%_ _%val33689%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33688%_
           _%val33689%_
           '24
           thread::t
           'denv))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv-cache1-set!
      (lambda (_%obj33685%_ _%val33686%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33685%_
           _%val33686%_
           '25
           thread::t
           'denv-cache1))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv-cache2-set!
      (lambda (_%obj33682%_ _%val33683%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33682%_
           _%val33683%_
           '26
           thread::t
           'denv-cache2))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-denv-cache3-set!
      (lambda (_%obj33679%_ _%val33680%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33679%_
           _%val33680%_
           '27
           thread::t
           'denv-cache3))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-repl-channel-set!
      (lambda (_%obj33676%_ _%val33677%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33676%_
           _%val33677%_
           '28
           thread::t
           'repl-channel))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-mailbox-set!
      (lambda (_%obj33673%_ _%val33674%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33673%_
           _%val33674%_
           '29
           thread::t
           'mailbox))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-specific-set!
      (lambda (_%obj33670%_ _%val33671%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33670%_
           _%val33671%_
           '30
           thread::t
           'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-resume-thunk-set!
      (lambda (_%obj33667%_ _%val33668%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33667%_
           _%val33668%_
           '31
           thread::t
           'resume-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-interrupts-head-set!
      (lambda (_%obj33664%_ _%val33665%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33664%_
           _%val33665%_
           '32
           thread::t
           'interrupts-head))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-interrupts-tail-set!
      (lambda (_%obj33661%_ _%val33662%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33661%_
           _%val33662%_
           '33
           thread::t
           'interrupts-tail))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-last-processor-set!
      (lambda (_%obj33658%_ _%val33659%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33658%_
           _%val33659%_
           '34
           thread::t
           'last-processor))))
    (define gerbil/core/mop~MOP-system-classes#::thread-lock1
      (lambda (_%obj33656%_)
        (##structure-ref _%obj33656%_ '1 thread::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-deq-next
      (lambda (_%obj33654%_)
        (##structure-ref _%obj33654%_ '2 thread::t 'btq-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-deq-prev
      (lambda (_%obj33652%_)
        (##structure-ref _%obj33652%_ '3 thread::t 'btq-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-color
      (lambda (_%obj33650%_)
        (##structure-ref _%obj33650%_ '4 thread::t 'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-parent
      (lambda (_%obj33648%_)
        (##structure-ref _%obj33648%_ '5 thread::t 'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-left
      (lambda (_%obj33646%_)
        (##structure-ref _%obj33646%_ '6 thread::t 'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-leftmost
      (lambda (_%obj33644%_)
        (##structure-ref _%obj33644%_ '7 thread::t 'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::thread-tgroup
      (lambda (_%obj33642%_)
        (##structure-ref _%obj33642%_ '8 thread::t 'tgroup)))
    (define gerbil/core/mop~MOP-system-classes#::thread-lock2
      (lambda (_%obj33640%_)
        (##structure-ref _%obj33640%_ '9 thread::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-color
      (lambda (_%obj33638%_)
        (##structure-ref _%obj33638%_ '10 thread::t 'toq-color)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-parent
      (lambda (_%obj33636%_)
        (##structure-ref _%obj33636%_ '11 thread::t 'toq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-left
      (lambda (_%obj33634%_)
        (##structure-ref _%obj33634%_ '12 thread::t 'toq-left)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-leftmost
      (lambda (_%obj33632%_)
        (##structure-ref _%obj33632%_ '13 thread::t 'toq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::thread-threads-deq-next
      (lambda (_%obj33630%_)
        (##structure-ref _%obj33630%_ '14 thread::t 'threads-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-threads-deq-prev
      (lambda (_%obj33628%_)
        (##structure-ref _%obj33628%_ '15 thread::t 'threads-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::thread-floats
      (lambda (_%obj33626%_)
        (##structure-ref _%obj33626%_ '16 thread::t 'floats)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-container
      (lambda (_%obj33624%_)
        (##structure-ref _%obj33624%_ '17 thread::t 'btq-container)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-container
      (lambda (_%obj33622%_)
        (##structure-ref _%obj33622%_ '18 thread::t 'toq-container)))
    (define gerbil/core/mop~MOP-system-classes#::thread-name
      (lambda (_%obj33620%_)
        (##structure-ref _%obj33620%_ '19 thread::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::thread-end-condvar
      (lambda (_%obj33618%_)
        (##structure-ref _%obj33618%_ '20 thread::t 'end-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::thread-exception?
      (lambda (_%obj33616%_)
        (##structure-ref _%obj33616%_ '21 thread::t 'exception?)))
    (define gerbil/core/mop~MOP-system-classes#::thread-result
      (lambda (_%obj33614%_)
        (##structure-ref _%obj33614%_ '22 thread::t 'result)))
    (define gerbil/core/mop~MOP-system-classes#::thread-cont
      (lambda (_%obj33612%_)
        (##structure-ref _%obj33612%_ '23 thread::t 'cont)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv
      (lambda (_%obj33610%_)
        (##structure-ref _%obj33610%_ '24 thread::t 'denv)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv-cache1
      (lambda (_%obj33608%_)
        (##structure-ref _%obj33608%_ '25 thread::t 'denv-cache1)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv-cache2
      (lambda (_%obj33606%_)
        (##structure-ref _%obj33606%_ '26 thread::t 'denv-cache2)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv-cache3
      (lambda (_%obj33604%_)
        (##structure-ref _%obj33604%_ '27 thread::t 'denv-cache3)))
    (define gerbil/core/mop~MOP-system-classes#::thread-repl-channel
      (lambda (_%obj33602%_)
        (##structure-ref _%obj33602%_ '28 thread::t 'repl-channel)))
    (define gerbil/core/mop~MOP-system-classes#::thread-mailbox
      (lambda (_%obj33600%_)
        (##structure-ref _%obj33600%_ '29 thread::t 'mailbox)))
    (define gerbil/core/mop~MOP-system-classes#::thread-specific
      (lambda (_%obj33598%_)
        (##structure-ref _%obj33598%_ '30 thread::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#::thread-resume-thunk
      (lambda (_%obj33596%_)
        (##structure-ref _%obj33596%_ '31 thread::t 'resume-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::thread-interrupts-head
      (lambda (_%obj33594%_)
        (##structure-ref _%obj33594%_ '32 thread::t 'interrupts-head)))
    (define gerbil/core/mop~MOP-system-classes#::thread-interrupts-tail
      (lambda (_%obj33592%_)
        (##structure-ref _%obj33592%_ '33 thread::t 'interrupts-tail)))
    (define gerbil/core/mop~MOP-system-classes#::thread-last-processor
      (lambda (_%obj33590%_)
        (##structure-ref _%obj33590%_ '34 thread::t 'last-processor)))
    (define gerbil/core/mop~MOP-system-classes#::thread-lock1-set!
      (lambda (_%obj33587%_ _%val33588%_)
        (##structure-set! _%obj33587%_ _%val33588%_ '1 thread::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-deq-next-set!
      (lambda (_%obj33584%_ _%val33585%_)
        (##structure-set!
         _%obj33584%_
         _%val33585%_
         '2
         thread::t
         'btq-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-deq-prev-set!
      (lambda (_%obj33581%_ _%val33582%_)
        (##structure-set!
         _%obj33581%_
         _%val33582%_
         '3
         thread::t
         'btq-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-color-set!
      (lambda (_%obj33578%_ _%val33579%_)
        (##structure-set! _%obj33578%_ _%val33579%_ '4 thread::t 'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-parent-set!
      (lambda (_%obj33575%_ _%val33576%_)
        (##structure-set! _%obj33575%_ _%val33576%_ '5 thread::t 'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-left-set!
      (lambda (_%obj33572%_ _%val33573%_)
        (##structure-set! _%obj33572%_ _%val33573%_ '6 thread::t 'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-leftmost-set!
      (lambda (_%obj33569%_ _%val33570%_)
        (##structure-set!
         _%obj33569%_
         _%val33570%_
         '7
         thread::t
         'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::thread-tgroup-set!
      (lambda (_%obj33566%_ _%val33567%_)
        (##structure-set! _%obj33566%_ _%val33567%_ '8 thread::t 'tgroup)))
    (define gerbil/core/mop~MOP-system-classes#::thread-lock2-set!
      (lambda (_%obj33563%_ _%val33564%_)
        (##structure-set! _%obj33563%_ _%val33564%_ '9 thread::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-color-set!
      (lambda (_%obj33560%_ _%val33561%_)
        (##structure-set! _%obj33560%_ _%val33561%_ '10 thread::t 'toq-color)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-parent-set!
      (lambda (_%obj33557%_ _%val33558%_)
        (##structure-set!
         _%obj33557%_
         _%val33558%_
         '11
         thread::t
         'toq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-left-set!
      (lambda (_%obj33554%_ _%val33555%_)
        (##structure-set! _%obj33554%_ _%val33555%_ '12 thread::t 'toq-left)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-leftmost-set!
      (lambda (_%obj33551%_ _%val33552%_)
        (##structure-set!
         _%obj33551%_
         _%val33552%_
         '13
         thread::t
         'toq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::thread-threads-deq-next-set!
      (lambda (_%obj33548%_ _%val33549%_)
        (##structure-set!
         _%obj33548%_
         _%val33549%_
         '14
         thread::t
         'threads-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-threads-deq-prev-set!
      (lambda (_%obj33545%_ _%val33546%_)
        (##structure-set!
         _%obj33545%_
         _%val33546%_
         '15
         thread::t
         'threads-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::thread-floats-set!
      (lambda (_%obj33542%_ _%val33543%_)
        (##structure-set! _%obj33542%_ _%val33543%_ '16 thread::t 'floats)))
    (define gerbil/core/mop~MOP-system-classes#::thread-btq-container-set!
      (lambda (_%obj33539%_ _%val33540%_)
        (##structure-set!
         _%obj33539%_
         _%val33540%_
         '17
         thread::t
         'btq-container)))
    (define gerbil/core/mop~MOP-system-classes#::thread-toq-container-set!
      (lambda (_%obj33536%_ _%val33537%_)
        (##structure-set!
         _%obj33536%_
         _%val33537%_
         '18
         thread::t
         'toq-container)))
    (define gerbil/core/mop~MOP-system-classes#::thread-name-set!
      (lambda (_%obj33533%_ _%val33534%_)
        (##structure-set! _%obj33533%_ _%val33534%_ '19 thread::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::thread-end-condvar-set!
      (lambda (_%obj33530%_ _%val33531%_)
        (##structure-set!
         _%obj33530%_
         _%val33531%_
         '20
         thread::t
         'end-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::thread-exception?-set!
      (lambda (_%obj33527%_ _%val33528%_)
        (##structure-set!
         _%obj33527%_
         _%val33528%_
         '21
         thread::t
         'exception?)))
    (define gerbil/core/mop~MOP-system-classes#::thread-result-set!
      (lambda (_%obj33524%_ _%val33525%_)
        (##structure-set! _%obj33524%_ _%val33525%_ '22 thread::t 'result)))
    (define gerbil/core/mop~MOP-system-classes#::thread-cont-set!
      (lambda (_%obj33521%_ _%val33522%_)
        (##structure-set! _%obj33521%_ _%val33522%_ '23 thread::t 'cont)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv-set!
      (lambda (_%obj33518%_ _%val33519%_)
        (##structure-set! _%obj33518%_ _%val33519%_ '24 thread::t 'denv)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv-cache1-set!
      (lambda (_%obj33515%_ _%val33516%_)
        (##structure-set!
         _%obj33515%_
         _%val33516%_
         '25
         thread::t
         'denv-cache1)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv-cache2-set!
      (lambda (_%obj33512%_ _%val33513%_)
        (##structure-set!
         _%obj33512%_
         _%val33513%_
         '26
         thread::t
         'denv-cache2)))
    (define gerbil/core/mop~MOP-system-classes#::thread-denv-cache3-set!
      (lambda (_%obj33509%_ _%val33510%_)
        (##structure-set!
         _%obj33509%_
         _%val33510%_
         '27
         thread::t
         'denv-cache3)))
    (define gerbil/core/mop~MOP-system-classes#::thread-repl-channel-set!
      (lambda (_%obj33506%_ _%val33507%_)
        (##structure-set!
         _%obj33506%_
         _%val33507%_
         '28
         thread::t
         'repl-channel)))
    (define gerbil/core/mop~MOP-system-classes#::thread-mailbox-set!
      (lambda (_%obj33503%_ _%val33504%_)
        (##structure-set! _%obj33503%_ _%val33504%_ '29 thread::t 'mailbox)))
    (define gerbil/core/mop~MOP-system-classes#::thread-specific-set!
      (lambda (_%obj33500%_ _%val33501%_)
        (##structure-set! _%obj33500%_ _%val33501%_ '30 thread::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#::thread-resume-thunk-set!
      (lambda (_%obj33497%_ _%val33498%_)
        (##structure-set!
         _%obj33497%_
         _%val33498%_
         '31
         thread::t
         'resume-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::thread-interrupts-head-set!
      (lambda (_%obj33494%_ _%val33495%_)
        (##structure-set!
         _%obj33494%_
         _%val33495%_
         '32
         thread::t
         'interrupts-head)))
    (define gerbil/core/mop~MOP-system-classes#::thread-interrupts-tail-set!
      (lambda (_%obj33491%_ _%val33492%_)
        (##structure-set!
         _%obj33491%_
         _%val33492%_
         '33
         thread::t
         'interrupts-tail)))
    (define gerbil/core/mop~MOP-system-classes#::thread-last-processor-set!
      (lambda (_%obj33486%_ _%val33488%_)
        (##structure-set!
         _%obj33486%_
         _%val33488%_
         '34
         thread::t
         'last-processor)))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-tgroups-deq-next
      (lambda (_%obj33484%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33484%_
           '1
           thread-group::t
           'tgroups-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-tgroups-deq-prev
      (lambda (_%obj33482%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33482%_
           '2
           thread-group::t
           'tgroups-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-tgroups
      (lambda (_%obj33480%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33480%_
           '3
           thread-group::t
           'tgroups))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-parent
      (lambda (_%obj33478%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33478%_
           '4
           thread-group::t
           'parent))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-name
      (lambda (_%obj33476%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33476%_ '5 thread-group::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-suspend-condvar
      (lambda (_%obj33474%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33474%_
           '6
           thread-group::t
           'suspend-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-specific
      (lambda (_%obj33472%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33472%_
           '7
           thread-group::t
           'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused1
      (lambda (_%obj33470%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33470%_
           '8
           thread-group::t
           'unused1))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused2
      (lambda (_%obj33468%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33468%_
           '9
           thread-group::t
           'unused2))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused3
      (lambda (_%obj33466%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33466%_
           '10
           thread-group::t
           'unused3))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused4
      (lambda (_%obj33464%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33464%_
           '11
           thread-group::t
           'unused4))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused5
      (lambda (_%obj33462%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33462%_
           '12
           thread-group::t
           'unused5))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused6
      (lambda (_%obj33460%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33460%_
           '13
           thread-group::t
           'unused6))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-threads-deq-next
      (lambda (_%obj33458%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33458%_
           '14
           thread-group::t
           'threads-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-threads-deq-prev
      (lambda (_%obj33456%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33456%_
           '15
           thread-group::t
           'threads-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-tgroups-deq-next-set!
      (lambda (_%obj33453%_ _%val33454%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33453%_
           _%val33454%_
           '1
           thread-group::t
           'tgroups-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-tgroups-deq-prev-set!
      (lambda (_%obj33450%_ _%val33451%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33450%_
           _%val33451%_
           '2
           thread-group::t
           'tgroups-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-tgroups-set!
      (lambda (_%obj33447%_ _%val33448%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33447%_
           _%val33448%_
           '3
           thread-group::t
           'tgroups))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-parent-set!
      (lambda (_%obj33444%_ _%val33445%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33444%_
           _%val33445%_
           '4
           thread-group::t
           'parent))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-name-set!
      (lambda (_%obj33441%_ _%val33442%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33441%_
           _%val33442%_
           '5
           thread-group::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-suspend-condvar-set!
      (lambda (_%obj33438%_ _%val33439%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33438%_
           _%val33439%_
           '6
           thread-group::t
           'suspend-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-specific-set!
      (lambda (_%obj33435%_ _%val33436%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33435%_
           _%val33436%_
           '7
           thread-group::t
           'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused1-set!
      (lambda (_%obj33432%_ _%val33433%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33432%_
           _%val33433%_
           '8
           thread-group::t
           'unused1))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused2-set!
      (lambda (_%obj33429%_ _%val33430%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33429%_
           _%val33430%_
           '9
           thread-group::t
           'unused2))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused3-set!
      (lambda (_%obj33426%_ _%val33427%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33426%_
           _%val33427%_
           '10
           thread-group::t
           'unused3))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused4-set!
      (lambda (_%obj33423%_ _%val33424%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33423%_
           _%val33424%_
           '11
           thread-group::t
           'unused4))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused5-set!
      (lambda (_%obj33420%_ _%val33421%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33420%_
           _%val33421%_
           '12
           thread-group::t
           'unused5))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-unused6-set!
      (lambda (_%obj33417%_ _%val33418%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33417%_
           _%val33418%_
           '13
           thread-group::t
           'unused6))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-threads-deq-next-set!
      (lambda (_%obj33414%_ _%val33415%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33414%_
           _%val33415%_
           '14
           thread-group::t
           'threads-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::thread-group-threads-deq-prev-set!
      (lambda (_%obj33411%_ _%val33412%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33411%_
           _%val33412%_
           '15
           thread-group::t
           'threads-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-tgroups-deq-next
      (lambda (_%obj33409%_)
        (##structure-ref _%obj33409%_ '1 thread-group::t 'tgroups-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-tgroups-deq-prev
      (lambda (_%obj33407%_)
        (##structure-ref _%obj33407%_ '2 thread-group::t 'tgroups-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-tgroups
      (lambda (_%obj33405%_)
        (##structure-ref _%obj33405%_ '3 thread-group::t 'tgroups)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-parent
      (lambda (_%obj33403%_)
        (##structure-ref _%obj33403%_ '4 thread-group::t 'parent)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-name
      (lambda (_%obj33401%_)
        (##structure-ref _%obj33401%_ '5 thread-group::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-suspend-condvar
      (lambda (_%obj33399%_)
        (##structure-ref _%obj33399%_ '6 thread-group::t 'suspend-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-specific
      (lambda (_%obj33397%_)
        (##structure-ref _%obj33397%_ '7 thread-group::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused1
      (lambda (_%obj33395%_)
        (##structure-ref _%obj33395%_ '8 thread-group::t 'unused1)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused2
      (lambda (_%obj33393%_)
        (##structure-ref _%obj33393%_ '9 thread-group::t 'unused2)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused3
      (lambda (_%obj33391%_)
        (##structure-ref _%obj33391%_ '10 thread-group::t 'unused3)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused4
      (lambda (_%obj33389%_)
        (##structure-ref _%obj33389%_ '11 thread-group::t 'unused4)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused5
      (lambda (_%obj33387%_)
        (##structure-ref _%obj33387%_ '12 thread-group::t 'unused5)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused6
      (lambda (_%obj33385%_)
        (##structure-ref _%obj33385%_ '13 thread-group::t 'unused6)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-threads-deq-next
      (lambda (_%obj33383%_)
        (##structure-ref _%obj33383%_ '14 thread-group::t 'threads-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-threads-deq-prev
      (lambda (_%obj33381%_)
        (##structure-ref _%obj33381%_ '15 thread-group::t 'threads-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-tgroups-deq-next-set!
      (lambda (_%obj33378%_ _%val33379%_)
        (##structure-set!
         _%obj33378%_
         _%val33379%_
         '1
         thread-group::t
         'tgroups-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-tgroups-deq-prev-set!
      (lambda (_%obj33375%_ _%val33376%_)
        (##structure-set!
         _%obj33375%_
         _%val33376%_
         '2
         thread-group::t
         'tgroups-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-tgroups-set!
      (lambda (_%obj33372%_ _%val33373%_)
        (##structure-set!
         _%obj33372%_
         _%val33373%_
         '3
         thread-group::t
         'tgroups)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-parent-set!
      (lambda (_%obj33369%_ _%val33370%_)
        (##structure-set!
         _%obj33369%_
         _%val33370%_
         '4
         thread-group::t
         'parent)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-name-set!
      (lambda (_%obj33366%_ _%val33367%_)
        (##structure-set! _%obj33366%_ _%val33367%_ '5 thread-group::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-suspend-condvar-set!
      (lambda (_%obj33363%_ _%val33364%_)
        (##structure-set!
         _%obj33363%_
         _%val33364%_
         '6
         thread-group::t
         'suspend-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-specific-set!
      (lambda (_%obj33360%_ _%val33361%_)
        (##structure-set!
         _%obj33360%_
         _%val33361%_
         '7
         thread-group::t
         'specific)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused1-set!
      (lambda (_%obj33357%_ _%val33358%_)
        (##structure-set!
         _%obj33357%_
         _%val33358%_
         '8
         thread-group::t
         'unused1)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused2-set!
      (lambda (_%obj33354%_ _%val33355%_)
        (##structure-set!
         _%obj33354%_
         _%val33355%_
         '9
         thread-group::t
         'unused2)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused3-set!
      (lambda (_%obj33351%_ _%val33352%_)
        (##structure-set!
         _%obj33351%_
         _%val33352%_
         '10
         thread-group::t
         'unused3)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused4-set!
      (lambda (_%obj33348%_ _%val33349%_)
        (##structure-set!
         _%obj33348%_
         _%val33349%_
         '11
         thread-group::t
         'unused4)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused5-set!
      (lambda (_%obj33345%_ _%val33346%_)
        (##structure-set!
         _%obj33345%_
         _%val33346%_
         '12
         thread-group::t
         'unused5)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-unused6-set!
      (lambda (_%obj33342%_ _%val33343%_)
        (##structure-set!
         _%obj33342%_
         _%val33343%_
         '13
         thread-group::t
         'unused6)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-threads-deq-next-set!
      (lambda (_%obj33339%_ _%val33340%_)
        (##structure-set!
         _%obj33339%_
         _%val33340%_
         '14
         thread-group::t
         'threads-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::thread-group-threads-deq-prev-set!
      (lambda (_%obj33334%_ _%val33336%_)
        (##structure-set!
         _%obj33334%_
         _%val33336%_
         '15
         thread-group::t
         'threads-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-lock1
      (lambda (_%obj33332%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33332%_ '1 mutex::t 'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-deq-next
      (lambda (_%obj33330%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33330%_ '2 mutex::t 'btq-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-deq-prev
      (lambda (_%obj33328%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33328%_ '3 mutex::t 'btq-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-color
      (lambda (_%obj33326%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33326%_ '4 mutex::t 'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-parent
      (lambda (_%obj33324%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33324%_ '5 mutex::t 'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-left
      (lambda (_%obj33322%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33322%_ '6 mutex::t 'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-leftmost
      (lambda (_%obj33320%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33320%_ '7 mutex::t 'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-owner
      (lambda (_%obj33318%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33318%_ '8 mutex::t 'btq-owner))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-lock2
      (lambda (_%obj33316%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33316%_ '9 mutex::t 'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-name
      (lambda (_%obj33314%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33314%_ '10 mutex::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-specific
      (lambda (_%obj33312%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33312%_ '11 mutex::t 'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-lock1-set!
      (lambda (_%obj33309%_ _%val33310%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33309%_
           _%val33310%_
           '1
           mutex::t
           'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-deq-next-set!
      (lambda (_%obj33306%_ _%val33307%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33306%_
           _%val33307%_
           '2
           mutex::t
           'btq-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-deq-prev-set!
      (lambda (_%obj33303%_ _%val33304%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33303%_
           _%val33304%_
           '3
           mutex::t
           'btq-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-color-set!
      (lambda (_%obj33300%_ _%val33301%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33300%_
           _%val33301%_
           '4
           mutex::t
           'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-parent-set!
      (lambda (_%obj33297%_ _%val33298%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33297%_
           _%val33298%_
           '5
           mutex::t
           'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-left-set!
      (lambda (_%obj33294%_ _%val33295%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33294%_
           _%val33295%_
           '6
           mutex::t
           'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-leftmost-set!
      (lambda (_%obj33291%_ _%val33292%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33291%_
           _%val33292%_
           '7
           mutex::t
           'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-btq-owner-set!
      (lambda (_%obj33288%_ _%val33289%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33288%_
           _%val33289%_
           '8
           mutex::t
           'btq-owner))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-lock2-set!
      (lambda (_%obj33285%_ _%val33286%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33285%_
           _%val33286%_
           '9
           mutex::t
           'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-name-set!
      (lambda (_%obj33282%_ _%val33283%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33282%_
           _%val33283%_
           '10
           mutex::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::mutex-specific-set!
      (lambda (_%obj33279%_ _%val33280%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33279%_
           _%val33280%_
           '11
           mutex::t
           'specific))))
    (define gerbil/core/mop~MOP-system-classes#::mutex-lock1
      (lambda (_%obj33277%_)
        (##structure-ref _%obj33277%_ '1 mutex::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-deq-next
      (lambda (_%obj33275%_)
        (##structure-ref _%obj33275%_ '2 mutex::t 'btq-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-deq-prev
      (lambda (_%obj33273%_)
        (##structure-ref _%obj33273%_ '3 mutex::t 'btq-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-color
      (lambda (_%obj33271%_)
        (##structure-ref _%obj33271%_ '4 mutex::t 'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-parent
      (lambda (_%obj33269%_)
        (##structure-ref _%obj33269%_ '5 mutex::t 'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-left
      (lambda (_%obj33267%_)
        (##structure-ref _%obj33267%_ '6 mutex::t 'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-leftmost
      (lambda (_%obj33265%_)
        (##structure-ref _%obj33265%_ '7 mutex::t 'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-owner
      (lambda (_%obj33263%_)
        (##structure-ref _%obj33263%_ '8 mutex::t 'btq-owner)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-lock2
      (lambda (_%obj33261%_)
        (##structure-ref _%obj33261%_ '9 mutex::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-name
      (lambda (_%obj33259%_)
        (##structure-ref _%obj33259%_ '10 mutex::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-specific
      (lambda (_%obj33257%_)
        (##structure-ref _%obj33257%_ '11 mutex::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-lock1-set!
      (lambda (_%obj33254%_ _%val33255%_)
        (##structure-set! _%obj33254%_ _%val33255%_ '1 mutex::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-deq-next-set!
      (lambda (_%obj33251%_ _%val33252%_)
        (##structure-set!
         _%obj33251%_
         _%val33252%_
         '2
         mutex::t
         'btq-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-deq-prev-set!
      (lambda (_%obj33248%_ _%val33249%_)
        (##structure-set!
         _%obj33248%_
         _%val33249%_
         '3
         mutex::t
         'btq-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-color-set!
      (lambda (_%obj33245%_ _%val33246%_)
        (##structure-set! _%obj33245%_ _%val33246%_ '4 mutex::t 'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-parent-set!
      (lambda (_%obj33242%_ _%val33243%_)
        (##structure-set! _%obj33242%_ _%val33243%_ '5 mutex::t 'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-left-set!
      (lambda (_%obj33239%_ _%val33240%_)
        (##structure-set! _%obj33239%_ _%val33240%_ '6 mutex::t 'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-leftmost-set!
      (lambda (_%obj33236%_ _%val33237%_)
        (##structure-set!
         _%obj33236%_
         _%val33237%_
         '7
         mutex::t
         'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-btq-owner-set!
      (lambda (_%obj33233%_ _%val33234%_)
        (##structure-set! _%obj33233%_ _%val33234%_ '8 mutex::t 'btq-owner)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-lock2-set!
      (lambda (_%obj33230%_ _%val33231%_)
        (##structure-set! _%obj33230%_ _%val33231%_ '9 mutex::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-name-set!
      (lambda (_%obj33227%_ _%val33228%_)
        (##structure-set! _%obj33227%_ _%val33228%_ '10 mutex::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::mutex-specific-set!
      (lambda (_%obj33222%_ _%val33224%_)
        (##structure-set! _%obj33222%_ _%val33224%_ '11 mutex::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-lock1
      (lambda (_%obj33220%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33220%_ '1 condvar::t 'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-deq-next
      (lambda (_%obj33218%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33218%_
           '2
           condvar::t
           'btq-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-deq-prev
      (lambda (_%obj33216%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33216%_
           '3
           condvar::t
           'btq-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-color
      (lambda (_%obj33214%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33214%_ '4 condvar::t 'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-parent
      (lambda (_%obj33212%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33212%_ '5 condvar::t 'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-left
      (lambda (_%obj33210%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33210%_ '6 condvar::t 'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-leftmost
      (lambda (_%obj33208%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33208%_
           '7
           condvar::t
           'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-owner
      (lambda (_%obj33206%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33206%_ '8 condvar::t 'btq-owner))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-lock2
      (lambda (_%obj33204%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33204%_ '9 condvar::t 'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-name
      (lambda (_%obj33202%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33202%_ '10 condvar::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-specific
      (lambda (_%obj33200%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33200%_ '11 condvar::t 'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-lock1-set!
      (lambda (_%obj33197%_ _%val33198%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33197%_
           _%val33198%_
           '1
           condvar::t
           'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-deq-next-set!
      (lambda (_%obj33194%_ _%val33195%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33194%_
           _%val33195%_
           '2
           condvar::t
           'btq-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-deq-prev-set!
      (lambda (_%obj33191%_ _%val33192%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33191%_
           _%val33192%_
           '3
           condvar::t
           'btq-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-color-set!
      (lambda (_%obj33188%_ _%val33189%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33188%_
           _%val33189%_
           '4
           condvar::t
           'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-parent-set!
      (lambda (_%obj33185%_ _%val33186%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33185%_
           _%val33186%_
           '5
           condvar::t
           'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-left-set!
      (lambda (_%obj33182%_ _%val33183%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33182%_
           _%val33183%_
           '6
           condvar::t
           'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-leftmost-set!
      (lambda (_%obj33179%_ _%val33180%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33179%_
           _%val33180%_
           '7
           condvar::t
           'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-btq-owner-set!
      (lambda (_%obj33176%_ _%val33177%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33176%_
           _%val33177%_
           '8
           condvar::t
           'btq-owner))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-lock2-set!
      (lambda (_%obj33173%_ _%val33174%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33173%_
           _%val33174%_
           '9
           condvar::t
           'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-name-set!
      (lambda (_%obj33170%_ _%val33171%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33170%_
           _%val33171%_
           '10
           condvar::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::condvar-specific-set!
      (lambda (_%obj33167%_ _%val33168%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33167%_
           _%val33168%_
           '11
           condvar::t
           'specific))))
    (define gerbil/core/mop~MOP-system-classes#::condvar-lock1
      (lambda (_%obj33165%_)
        (##structure-ref _%obj33165%_ '1 condvar::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-deq-next
      (lambda (_%obj33163%_)
        (##structure-ref _%obj33163%_ '2 condvar::t 'btq-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-deq-prev
      (lambda (_%obj33161%_)
        (##structure-ref _%obj33161%_ '3 condvar::t 'btq-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-color
      (lambda (_%obj33159%_)
        (##structure-ref _%obj33159%_ '4 condvar::t 'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-parent
      (lambda (_%obj33157%_)
        (##structure-ref _%obj33157%_ '5 condvar::t 'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-left
      (lambda (_%obj33155%_)
        (##structure-ref _%obj33155%_ '6 condvar::t 'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-leftmost
      (lambda (_%obj33153%_)
        (##structure-ref _%obj33153%_ '7 condvar::t 'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-owner
      (lambda (_%obj33151%_)
        (##structure-ref _%obj33151%_ '8 condvar::t 'btq-owner)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-lock2
      (lambda (_%obj33149%_)
        (##structure-ref _%obj33149%_ '9 condvar::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-name
      (lambda (_%obj33147%_)
        (##structure-ref _%obj33147%_ '10 condvar::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-specific
      (lambda (_%obj33145%_)
        (##structure-ref _%obj33145%_ '11 condvar::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-lock1-set!
      (lambda (_%obj33142%_ _%val33143%_)
        (##structure-set! _%obj33142%_ _%val33143%_ '1 condvar::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-deq-next-set!
      (lambda (_%obj33139%_ _%val33140%_)
        (##structure-set!
         _%obj33139%_
         _%val33140%_
         '2
         condvar::t
         'btq-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-deq-prev-set!
      (lambda (_%obj33136%_ _%val33137%_)
        (##structure-set!
         _%obj33136%_
         _%val33137%_
         '3
         condvar::t
         'btq-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-color-set!
      (lambda (_%obj33133%_ _%val33134%_)
        (##structure-set! _%obj33133%_ _%val33134%_ '4 condvar::t 'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-parent-set!
      (lambda (_%obj33130%_ _%val33131%_)
        (##structure-set!
         _%obj33130%_
         _%val33131%_
         '5
         condvar::t
         'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-left-set!
      (lambda (_%obj33127%_ _%val33128%_)
        (##structure-set! _%obj33127%_ _%val33128%_ '6 condvar::t 'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-leftmost-set!
      (lambda (_%obj33124%_ _%val33125%_)
        (##structure-set!
         _%obj33124%_
         _%val33125%_
         '7
         condvar::t
         'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-btq-owner-set!
      (lambda (_%obj33121%_ _%val33122%_)
        (##structure-set! _%obj33121%_ _%val33122%_ '8 condvar::t 'btq-owner)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-lock2-set!
      (lambda (_%obj33118%_ _%val33119%_)
        (##structure-set! _%obj33118%_ _%val33119%_ '9 condvar::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-name-set!
      (lambda (_%obj33115%_ _%val33116%_)
        (##structure-set! _%obj33115%_ _%val33116%_ '10 condvar::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::condvar-specific-set!
      (lambda (_%obj33110%_ _%val33112%_)
        (##structure-set! _%obj33110%_ _%val33112%_ '11 condvar::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#&::port-mutex
      (lambda (_%obj33108%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33108%_ '1 port::t 'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::port-rkind
      (lambda (_%obj33106%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33106%_ '2 port::t 'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wkind
      (lambda (_%obj33104%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33104%_ '3 port::t 'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::port-name
      (lambda (_%obj33102%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33102%_ '4 port::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wait
      (lambda (_%obj33100%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33100%_ '5 port::t 'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::port-close
      (lambda (_%obj33098%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33098%_ '6 port::t 'close))))
    (define gerbil/core/mop~MOP-system-classes#&::port-roptions
      (lambda (_%obj33096%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33096%_ '7 port::t 'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::port-rtimeout
      (lambda (_%obj33094%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33094%_ '8 port::t 'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-rtimeout-thunk
      (lambda (_%obj33092%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33092%_
           '9
           port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::port-set-rtimeout
      (lambda (_%obj33090%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33090%_ '10 port::t 'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-woptions
      (lambda (_%obj33088%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33088%_ '11 port::t 'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wtimeout
      (lambda (_%obj33086%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33086%_ '12 port::t 'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wtimeout-thunk
      (lambda (_%obj33084%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33084%_
           '13
           port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::port-set-wtimeout
      (lambda (_%obj33082%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj33082%_ '14 port::t 'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-io-exception-handler
      (lambda (_%obj33080%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj33080%_
           '15
           port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::port-mutex-set!
      (lambda (_%obj33077%_ _%val33078%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33077%_
           _%val33078%_
           '1
           port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::port-rkind-set!
      (lambda (_%obj33074%_ _%val33075%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33074%_
           _%val33075%_
           '2
           port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wkind-set!
      (lambda (_%obj33071%_ _%val33072%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33071%_
           _%val33072%_
           '3
           port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::port-name-set!
      (lambda (_%obj33068%_ _%val33069%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33068%_
           _%val33069%_
           '4
           port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wait-set!
      (lambda (_%obj33065%_ _%val33066%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33065%_
           _%val33066%_
           '5
           port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::port-close-set!
      (lambda (_%obj33062%_ _%val33063%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33062%_
           _%val33063%_
           '6
           port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::port-roptions-set!
      (lambda (_%obj33059%_ _%val33060%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33059%_
           _%val33060%_
           '7
           port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::port-rtimeout-set!
      (lambda (_%obj33056%_ _%val33057%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33056%_
           _%val33057%_
           '8
           port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-rtimeout-thunk-set!
      (lambda (_%obj33053%_ _%val33054%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33053%_
           _%val33054%_
           '9
           port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::port-set-rtimeout-set!
      (lambda (_%obj33050%_ _%val33051%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33050%_
           _%val33051%_
           '10
           port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-woptions-set!
      (lambda (_%obj33047%_ _%val33048%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33047%_
           _%val33048%_
           '11
           port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wtimeout-set!
      (lambda (_%obj33044%_ _%val33045%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33044%_
           _%val33045%_
           '12
           port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-wtimeout-thunk-set!
      (lambda (_%obj33041%_ _%val33042%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33041%_
           _%val33042%_
           '13
           port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::port-set-wtimeout-set!
      (lambda (_%obj33038%_ _%val33039%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33038%_
           _%val33039%_
           '14
           port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::port-io-exception-handler-set!
      (lambda (_%obj33035%_ _%val33036%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj33035%_
           _%val33036%_
           '15
           port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::port-mutex
      (lambda (_%obj33033%_) (##structure-ref _%obj33033%_ '1 port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::port-rkind
      (lambda (_%obj33031%_) (##structure-ref _%obj33031%_ '2 port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::port-wkind
      (lambda (_%obj33029%_) (##structure-ref _%obj33029%_ '3 port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::port-name
      (lambda (_%obj33027%_) (##structure-ref _%obj33027%_ '4 port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::port-wait
      (lambda (_%obj33025%_) (##structure-ref _%obj33025%_ '5 port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::port-close
      (lambda (_%obj33023%_) (##structure-ref _%obj33023%_ '6 port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::port-roptions
      (lambda (_%obj33021%_)
        (##structure-ref _%obj33021%_ '7 port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::port-rtimeout
      (lambda (_%obj33019%_)
        (##structure-ref _%obj33019%_ '8 port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-rtimeout-thunk
      (lambda (_%obj33017%_)
        (##structure-ref _%obj33017%_ '9 port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::port-set-rtimeout
      (lambda (_%obj33015%_)
        (##structure-ref _%obj33015%_ '10 port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-woptions
      (lambda (_%obj33013%_)
        (##structure-ref _%obj33013%_ '11 port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::port-wtimeout
      (lambda (_%obj33011%_)
        (##structure-ref _%obj33011%_ '12 port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-wtimeout-thunk
      (lambda (_%obj33009%_)
        (##structure-ref _%obj33009%_ '13 port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::port-set-wtimeout
      (lambda (_%obj33007%_)
        (##structure-ref _%obj33007%_ '14 port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-io-exception-handler
      (lambda (_%obj33005%_)
        (##structure-ref _%obj33005%_ '15 port::t 'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::port-mutex-set!
      (lambda (_%obj33002%_ _%val33003%_)
        (##structure-set! _%obj33002%_ _%val33003%_ '1 port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::port-rkind-set!
      (lambda (_%obj32999%_ _%val33000%_)
        (##structure-set! _%obj32999%_ _%val33000%_ '2 port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::port-wkind-set!
      (lambda (_%obj32996%_ _%val32997%_)
        (##structure-set! _%obj32996%_ _%val32997%_ '3 port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::port-name-set!
      (lambda (_%obj32993%_ _%val32994%_)
        (##structure-set! _%obj32993%_ _%val32994%_ '4 port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::port-wait-set!
      (lambda (_%obj32990%_ _%val32991%_)
        (##structure-set! _%obj32990%_ _%val32991%_ '5 port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::port-close-set!
      (lambda (_%obj32987%_ _%val32988%_)
        (##structure-set! _%obj32987%_ _%val32988%_ '6 port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::port-roptions-set!
      (lambda (_%obj32984%_ _%val32985%_)
        (##structure-set! _%obj32984%_ _%val32985%_ '7 port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::port-rtimeout-set!
      (lambda (_%obj32981%_ _%val32982%_)
        (##structure-set! _%obj32981%_ _%val32982%_ '8 port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-rtimeout-thunk-set!
      (lambda (_%obj32978%_ _%val32979%_)
        (##structure-set!
         _%obj32978%_
         _%val32979%_
         '9
         port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::port-set-rtimeout-set!
      (lambda (_%obj32975%_ _%val32976%_)
        (##structure-set!
         _%obj32975%_
         _%val32976%_
         '10
         port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-woptions-set!
      (lambda (_%obj32972%_ _%val32973%_)
        (##structure-set! _%obj32972%_ _%val32973%_ '11 port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::port-wtimeout-set!
      (lambda (_%obj32969%_ _%val32970%_)
        (##structure-set! _%obj32969%_ _%val32970%_ '12 port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-wtimeout-thunk-set!
      (lambda (_%obj32966%_ _%val32967%_)
        (##structure-set!
         _%obj32966%_
         _%val32967%_
         '13
         port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::port-set-wtimeout-set!
      (lambda (_%obj32963%_ _%val32964%_)
        (##structure-set!
         _%obj32963%_
         _%val32964%_
         '14
         port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::port-io-exception-handler-set!
      (lambda (_%obj32958%_ _%val32960%_)
        (##structure-set!
         _%obj32958%_
         _%val32960%_
         '15
         port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-read-datum
      (lambda (_%obj32956%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32956%_
           '1
           object-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-write-datum
      (lambda (_%obj32954%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32954%_
           '2
           object-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-newline
      (lambda (_%obj32952%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32952%_
           '3
           object-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-force-output
      (lambda (_%obj32950%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32950%_
           '4
           object-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-mutex
      (lambda (_%obj32948%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32948%_ '5 object-port::t 'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-rkind
      (lambda (_%obj32946%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32946%_ '6 object-port::t 'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wkind
      (lambda (_%obj32944%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32944%_ '7 object-port::t 'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-name
      (lambda (_%obj32942%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32942%_ '8 object-port::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wait
      (lambda (_%obj32940%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32940%_ '9 object-port::t 'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-close
      (lambda (_%obj32938%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32938%_ '10 object-port::t 'close))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-roptions
      (lambda (_%obj32936%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32936%_
           '11
           object-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-rtimeout
      (lambda (_%obj32934%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32934%_
           '12
           object-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-rtimeout-thunk
      (lambda (_%obj32932%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32932%_
           '13
           object-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-set-rtimeout
      (lambda (_%obj32930%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32930%_
           '14
           object-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-woptions
      (lambda (_%obj32928%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32928%_
           '15
           object-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wtimeout
      (lambda (_%obj32926%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32926%_
           '16
           object-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wtimeout-thunk
      (lambda (_%obj32924%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32924%_
           '17
           object-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-set-wtimeout
      (lambda (_%obj32922%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32922%_
           '18
           object-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-io-exception-handler
      (lambda (_%obj32920%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32920%_
           '19
           object-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-read-datum-set!
      (lambda (_%obj32917%_ _%val32918%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32917%_
           _%val32918%_
           '1
           object-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-write-datum-set!
      (lambda (_%obj32914%_ _%val32915%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32914%_
           _%val32915%_
           '2
           object-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-newline-set!
      (lambda (_%obj32911%_ _%val32912%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32911%_
           _%val32912%_
           '3
           object-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-force-output-set!
      (lambda (_%obj32908%_ _%val32909%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32908%_
           _%val32909%_
           '4
           object-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-mutex-set!
      (lambda (_%obj32905%_ _%val32906%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32905%_
           _%val32906%_
           '5
           object-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-rkind-set!
      (lambda (_%obj32902%_ _%val32903%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32902%_
           _%val32903%_
           '6
           object-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wkind-set!
      (lambda (_%obj32899%_ _%val32900%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32899%_
           _%val32900%_
           '7
           object-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-name-set!
      (lambda (_%obj32896%_ _%val32897%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32896%_
           _%val32897%_
           '8
           object-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wait-set!
      (lambda (_%obj32893%_ _%val32894%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32893%_
           _%val32894%_
           '9
           object-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-close-set!
      (lambda (_%obj32890%_ _%val32891%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32890%_
           _%val32891%_
           '10
           object-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-roptions-set!
      (lambda (_%obj32887%_ _%val32888%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32887%_
           _%val32888%_
           '11
           object-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-rtimeout-set!
      (lambda (_%obj32884%_ _%val32885%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32884%_
           _%val32885%_
           '12
           object-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-rtimeout-thunk-set!
      (lambda (_%obj32881%_ _%val32882%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32881%_
           _%val32882%_
           '13
           object-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-set-rtimeout-set!
      (lambda (_%obj32878%_ _%val32879%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32878%_
           _%val32879%_
           '14
           object-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-woptions-set!
      (lambda (_%obj32875%_ _%val32876%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32875%_
           _%val32876%_
           '15
           object-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wtimeout-set!
      (lambda (_%obj32872%_ _%val32873%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32872%_
           _%val32873%_
           '16
           object-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-wtimeout-thunk-set!
      (lambda (_%obj32869%_ _%val32870%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32869%_
           _%val32870%_
           '17
           object-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-set-wtimeout-set!
      (lambda (_%obj32866%_ _%val32867%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32866%_
           _%val32867%_
           '18
           object-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::object-port-io-exception-handler-set!
      (lambda (_%obj32863%_ _%val32864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32863%_
           _%val32864%_
           '19
           object-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::object-port-read-datum
      (lambda (_%obj32861%_)
        (##structure-ref _%obj32861%_ '1 object-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-write-datum
      (lambda (_%obj32859%_)
        (##structure-ref _%obj32859%_ '2 object-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-newline
      (lambda (_%obj32857%_)
        (##structure-ref _%obj32857%_ '3 object-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-force-output
      (lambda (_%obj32855%_)
        (##structure-ref _%obj32855%_ '4 object-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-mutex
      (lambda (_%obj32853%_)
        (##structure-ref _%obj32853%_ '5 object-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-rkind
      (lambda (_%obj32851%_)
        (##structure-ref _%obj32851%_ '6 object-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wkind
      (lambda (_%obj32849%_)
        (##structure-ref _%obj32849%_ '7 object-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-name
      (lambda (_%obj32847%_)
        (##structure-ref _%obj32847%_ '8 object-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wait
      (lambda (_%obj32845%_)
        (##structure-ref _%obj32845%_ '9 object-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-close
      (lambda (_%obj32843%_)
        (##structure-ref _%obj32843%_ '10 object-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-roptions
      (lambda (_%obj32841%_)
        (##structure-ref _%obj32841%_ '11 object-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-rtimeout
      (lambda (_%obj32839%_)
        (##structure-ref _%obj32839%_ '12 object-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-rtimeout-thunk
      (lambda (_%obj32837%_)
        (##structure-ref _%obj32837%_ '13 object-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-set-rtimeout
      (lambda (_%obj32835%_)
        (##structure-ref _%obj32835%_ '14 object-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-woptions
      (lambda (_%obj32833%_)
        (##structure-ref _%obj32833%_ '15 object-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wtimeout
      (lambda (_%obj32831%_)
        (##structure-ref _%obj32831%_ '16 object-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wtimeout-thunk
      (lambda (_%obj32829%_)
        (##structure-ref _%obj32829%_ '17 object-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-set-wtimeout
      (lambda (_%obj32827%_)
        (##structure-ref _%obj32827%_ '18 object-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-io-exception-handler
      (lambda (_%obj32825%_)
        (##structure-ref
         _%obj32825%_
         '19
         object-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-read-datum-set!
      (lambda (_%obj32822%_ _%val32823%_)
        (##structure-set!
         _%obj32822%_
         _%val32823%_
         '1
         object-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-write-datum-set!
      (lambda (_%obj32819%_ _%val32820%_)
        (##structure-set!
         _%obj32819%_
         _%val32820%_
         '2
         object-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-newline-set!
      (lambda (_%obj32816%_ _%val32817%_)
        (##structure-set!
         _%obj32816%_
         _%val32817%_
         '3
         object-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-force-output-set!
      (lambda (_%obj32813%_ _%val32814%_)
        (##structure-set!
         _%obj32813%_
         _%val32814%_
         '4
         object-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-mutex-set!
      (lambda (_%obj32810%_ _%val32811%_)
        (##structure-set! _%obj32810%_ _%val32811%_ '5 object-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-rkind-set!
      (lambda (_%obj32807%_ _%val32808%_)
        (##structure-set! _%obj32807%_ _%val32808%_ '6 object-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wkind-set!
      (lambda (_%obj32804%_ _%val32805%_)
        (##structure-set! _%obj32804%_ _%val32805%_ '7 object-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-name-set!
      (lambda (_%obj32801%_ _%val32802%_)
        (##structure-set! _%obj32801%_ _%val32802%_ '8 object-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wait-set!
      (lambda (_%obj32798%_ _%val32799%_)
        (##structure-set! _%obj32798%_ _%val32799%_ '9 object-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-close-set!
      (lambda (_%obj32795%_ _%val32796%_)
        (##structure-set!
         _%obj32795%_
         _%val32796%_
         '10
         object-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-roptions-set!
      (lambda (_%obj32792%_ _%val32793%_)
        (##structure-set!
         _%obj32792%_
         _%val32793%_
         '11
         object-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-rtimeout-set!
      (lambda (_%obj32789%_ _%val32790%_)
        (##structure-set!
         _%obj32789%_
         _%val32790%_
         '12
         object-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-rtimeout-thunk-set!
      (lambda (_%obj32786%_ _%val32787%_)
        (##structure-set!
         _%obj32786%_
         _%val32787%_
         '13
         object-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-set-rtimeout-set!
      (lambda (_%obj32783%_ _%val32784%_)
        (##structure-set!
         _%obj32783%_
         _%val32784%_
         '14
         object-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-woptions-set!
      (lambda (_%obj32780%_ _%val32781%_)
        (##structure-set!
         _%obj32780%_
         _%val32781%_
         '15
         object-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wtimeout-set!
      (lambda (_%obj32777%_ _%val32778%_)
        (##structure-set!
         _%obj32777%_
         _%val32778%_
         '16
         object-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-wtimeout-thunk-set!
      (lambda (_%obj32774%_ _%val32775%_)
        (##structure-set!
         _%obj32774%_
         _%val32775%_
         '17
         object-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-set-wtimeout-set!
      (lambda (_%obj32771%_ _%val32772%_)
        (##structure-set!
         _%obj32771%_
         _%val32772%_
         '18
         object-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::object-port-io-exception-handler-set!
      (lambda (_%obj32766%_ _%val32768%_)
        (##structure-set!
         _%obj32766%_
         _%val32768%_
         '19
         object-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rbuf
      (lambda (_%obj32764%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32764%_
           '1
           character-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rlo
      (lambda (_%obj32762%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32762%_ '2 character-port::t 'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rhi
      (lambda (_%obj32760%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32760%_ '3 character-port::t 'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rchars
      (lambda (_%obj32758%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32758%_
           '4
           character-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rlines
      (lambda (_%obj32756%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32756%_
           '5
           character-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rcurline
      (lambda (_%obj32754%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32754%_
           '6
           character-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rbuf-fill
      (lambda (_%obj32752%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32752%_
           '7
           character-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-peek-eof?
      (lambda (_%obj32750%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32750%_
           '8
           character-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wbuf
      (lambda (_%obj32748%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32748%_
           '9
           character-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wlo
      (lambda (_%obj32746%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32746%_
           '10
           character-port::t
           'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-whi
      (lambda (_%obj32744%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32744%_
           '11
           character-port::t
           'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wchars
      (lambda (_%obj32742%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32742%_
           '12
           character-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wlines
      (lambda (_%obj32740%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32740%_
           '13
           character-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wcurline
      (lambda (_%obj32738%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32738%_
           '14
           character-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wbuf-drain
      (lambda (_%obj32736%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32736%_
           '15
           character-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-input-readtable
      (lambda (_%obj32734%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32734%_
           '16
           character-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-output-readtable
      (lambda (_%obj32732%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32732%_
           '17
           character-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-output-width
      (lambda (_%obj32730%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32730%_
           '18
           character-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-read-datum
      (lambda (_%obj32728%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32728%_
           '19
           character-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-write-datum
      (lambda (_%obj32726%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32726%_
           '20
           character-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-newline
      (lambda (_%obj32724%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32724%_
           '21
           character-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-force-output
      (lambda (_%obj32722%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32722%_
           '22
           character-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-mutex
      (lambda (_%obj32720%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32720%_
           '23
           character-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rkind
      (lambda (_%obj32718%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32718%_
           '24
           character-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wkind
      (lambda (_%obj32716%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32716%_
           '25
           character-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-name
      (lambda (_%obj32714%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32714%_
           '26
           character-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wait
      (lambda (_%obj32712%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32712%_
           '27
           character-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-close
      (lambda (_%obj32710%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32710%_
           '28
           character-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-roptions
      (lambda (_%obj32708%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32708%_
           '29
           character-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rtimeout
      (lambda (_%obj32706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32706%_
           '30
           character-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rtimeout-thunk
      (lambda (_%obj32704%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32704%_
           '31
           character-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-set-rtimeout
      (lambda (_%obj32702%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32702%_
           '32
           character-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-woptions
      (lambda (_%obj32700%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32700%_
           '33
           character-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wtimeout
      (lambda (_%obj32698%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32698%_
           '34
           character-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wtimeout-thunk
      (lambda (_%obj32696%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32696%_
           '35
           character-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-set-wtimeout
      (lambda (_%obj32694%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32694%_
           '36
           character-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-io-exception-handler
      (lambda (_%obj32692%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32692%_
           '37
           character-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rbuf-set!
      (lambda (_%obj32689%_ _%val32690%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32689%_
           _%val32690%_
           '1
           character-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rlo-set!
      (lambda (_%obj32686%_ _%val32687%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32686%_
           _%val32687%_
           '2
           character-port::t
           'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rhi-set!
      (lambda (_%obj32683%_ _%val32684%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32683%_
           _%val32684%_
           '3
           character-port::t
           'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rchars-set!
      (lambda (_%obj32680%_ _%val32681%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32680%_
           _%val32681%_
           '4
           character-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rlines-set!
      (lambda (_%obj32677%_ _%val32678%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32677%_
           _%val32678%_
           '5
           character-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rcurline-set!
      (lambda (_%obj32674%_ _%val32675%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32674%_
           _%val32675%_
           '6
           character-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rbuf-fill-set!
      (lambda (_%obj32671%_ _%val32672%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32671%_
           _%val32672%_
           '7
           character-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-peek-eof?-set!
      (lambda (_%obj32668%_ _%val32669%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32668%_
           _%val32669%_
           '8
           character-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wbuf-set!
      (lambda (_%obj32665%_ _%val32666%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32665%_
           _%val32666%_
           '9
           character-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wlo-set!
      (lambda (_%obj32662%_ _%val32663%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32662%_
           _%val32663%_
           '10
           character-port::t
           'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-whi-set!
      (lambda (_%obj32659%_ _%val32660%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32659%_
           _%val32660%_
           '11
           character-port::t
           'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wchars-set!
      (lambda (_%obj32656%_ _%val32657%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32656%_
           _%val32657%_
           '12
           character-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wlines-set!
      (lambda (_%obj32653%_ _%val32654%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32653%_
           _%val32654%_
           '13
           character-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wcurline-set!
      (lambda (_%obj32650%_ _%val32651%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32650%_
           _%val32651%_
           '14
           character-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wbuf-drain-set!
      (lambda (_%obj32647%_ _%val32648%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32647%_
           _%val32648%_
           '15
           character-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-input-readtable-set!
      (lambda (_%obj32644%_ _%val32645%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32644%_
           _%val32645%_
           '16
           character-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-output-readtable-set!
      (lambda (_%obj32641%_ _%val32642%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32641%_
           _%val32642%_
           '17
           character-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-output-width-set!
      (lambda (_%obj32638%_ _%val32639%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32638%_
           _%val32639%_
           '18
           character-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-read-datum-set!
      (lambda (_%obj32635%_ _%val32636%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32635%_
           _%val32636%_
           '19
           character-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-write-datum-set!
      (lambda (_%obj32632%_ _%val32633%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32632%_
           _%val32633%_
           '20
           character-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-newline-set!
      (lambda (_%obj32629%_ _%val32630%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32629%_
           _%val32630%_
           '21
           character-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-force-output-set!
      (lambda (_%obj32626%_ _%val32627%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32626%_
           _%val32627%_
           '22
           character-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-mutex-set!
      (lambda (_%obj32623%_ _%val32624%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32623%_
           _%val32624%_
           '23
           character-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rkind-set!
      (lambda (_%obj32620%_ _%val32621%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32620%_
           _%val32621%_
           '24
           character-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wkind-set!
      (lambda (_%obj32617%_ _%val32618%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32617%_
           _%val32618%_
           '25
           character-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-name-set!
      (lambda (_%obj32614%_ _%val32615%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32614%_
           _%val32615%_
           '26
           character-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wait-set!
      (lambda (_%obj32611%_ _%val32612%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32611%_
           _%val32612%_
           '27
           character-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-close-set!
      (lambda (_%obj32608%_ _%val32609%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32608%_
           _%val32609%_
           '28
           character-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-roptions-set!
      (lambda (_%obj32605%_ _%val32606%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32605%_
           _%val32606%_
           '29
           character-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rtimeout-set!
      (lambda (_%obj32602%_ _%val32603%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32602%_
           _%val32603%_
           '30
           character-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-rtimeout-thunk-set!
      (lambda (_%obj32599%_ _%val32600%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32599%_
           _%val32600%_
           '31
           character-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-set-rtimeout-set!
      (lambda (_%obj32596%_ _%val32597%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32596%_
           _%val32597%_
           '32
           character-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-woptions-set!
      (lambda (_%obj32593%_ _%val32594%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32593%_
           _%val32594%_
           '33
           character-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wtimeout-set!
      (lambda (_%obj32590%_ _%val32591%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32590%_
           _%val32591%_
           '34
           character-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-wtimeout-thunk-set!
      (lambda (_%obj32587%_ _%val32588%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32587%_
           _%val32588%_
           '35
           character-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-set-wtimeout-set!
      (lambda (_%obj32584%_ _%val32585%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32584%_
           _%val32585%_
           '36
           character-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::character-port-io-exception-handler-set!
      (lambda (_%obj32581%_ _%val32582%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32581%_
           _%val32582%_
           '37
           character-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rbuf
      (lambda (_%obj32579%_)
        (##structure-ref _%obj32579%_ '1 character-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rlo
      (lambda (_%obj32577%_)
        (##structure-ref _%obj32577%_ '2 character-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rhi
      (lambda (_%obj32575%_)
        (##structure-ref _%obj32575%_ '3 character-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rchars
      (lambda (_%obj32573%_)
        (##structure-ref _%obj32573%_ '4 character-port::t 'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rlines
      (lambda (_%obj32571%_)
        (##structure-ref _%obj32571%_ '5 character-port::t 'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rcurline
      (lambda (_%obj32569%_)
        (##structure-ref _%obj32569%_ '6 character-port::t 'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rbuf-fill
      (lambda (_%obj32567%_)
        (##structure-ref _%obj32567%_ '7 character-port::t 'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-peek-eof?
      (lambda (_%obj32565%_)
        (##structure-ref _%obj32565%_ '8 character-port::t 'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wbuf
      (lambda (_%obj32563%_)
        (##structure-ref _%obj32563%_ '9 character-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wlo
      (lambda (_%obj32561%_)
        (##structure-ref _%obj32561%_ '10 character-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-whi
      (lambda (_%obj32559%_)
        (##structure-ref _%obj32559%_ '11 character-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wchars
      (lambda (_%obj32557%_)
        (##structure-ref _%obj32557%_ '12 character-port::t 'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wlines
      (lambda (_%obj32555%_)
        (##structure-ref _%obj32555%_ '13 character-port::t 'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wcurline
      (lambda (_%obj32553%_)
        (##structure-ref _%obj32553%_ '14 character-port::t 'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wbuf-drain
      (lambda (_%obj32551%_)
        (##structure-ref _%obj32551%_ '15 character-port::t 'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-input-readtable
      (lambda (_%obj32549%_)
        (##structure-ref _%obj32549%_ '16 character-port::t 'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-output-readtable
      (lambda (_%obj32547%_)
        (##structure-ref
         _%obj32547%_
         '17
         character-port::t
         'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-output-width
      (lambda (_%obj32545%_)
        (##structure-ref _%obj32545%_ '18 character-port::t 'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-read-datum
      (lambda (_%obj32543%_)
        (##structure-ref _%obj32543%_ '19 character-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-write-datum
      (lambda (_%obj32541%_)
        (##structure-ref _%obj32541%_ '20 character-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-newline
      (lambda (_%obj32539%_)
        (##structure-ref _%obj32539%_ '21 character-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-force-output
      (lambda (_%obj32537%_)
        (##structure-ref _%obj32537%_ '22 character-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-mutex
      (lambda (_%obj32535%_)
        (##structure-ref _%obj32535%_ '23 character-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rkind
      (lambda (_%obj32533%_)
        (##structure-ref _%obj32533%_ '24 character-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wkind
      (lambda (_%obj32531%_)
        (##structure-ref _%obj32531%_ '25 character-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-name
      (lambda (_%obj32529%_)
        (##structure-ref _%obj32529%_ '26 character-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wait
      (lambda (_%obj32527%_)
        (##structure-ref _%obj32527%_ '27 character-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-close
      (lambda (_%obj32525%_)
        (##structure-ref _%obj32525%_ '28 character-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-roptions
      (lambda (_%obj32523%_)
        (##structure-ref _%obj32523%_ '29 character-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rtimeout
      (lambda (_%obj32521%_)
        (##structure-ref _%obj32521%_ '30 character-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rtimeout-thunk
      (lambda (_%obj32519%_)
        (##structure-ref _%obj32519%_ '31 character-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-set-rtimeout
      (lambda (_%obj32517%_)
        (##structure-ref _%obj32517%_ '32 character-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-woptions
      (lambda (_%obj32515%_)
        (##structure-ref _%obj32515%_ '33 character-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wtimeout
      (lambda (_%obj32513%_)
        (##structure-ref _%obj32513%_ '34 character-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wtimeout-thunk
      (lambda (_%obj32511%_)
        (##structure-ref _%obj32511%_ '35 character-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-set-wtimeout
      (lambda (_%obj32509%_)
        (##structure-ref _%obj32509%_ '36 character-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-io-exception-handler
      (lambda (_%obj32507%_)
        (##structure-ref
         _%obj32507%_
         '37
         character-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rbuf-set!
      (lambda (_%obj32504%_ _%val32505%_)
        (##structure-set!
         _%obj32504%_
         _%val32505%_
         '1
         character-port::t
         'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rlo-set!
      (lambda (_%obj32501%_ _%val32502%_)
        (##structure-set!
         _%obj32501%_
         _%val32502%_
         '2
         character-port::t
         'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rhi-set!
      (lambda (_%obj32498%_ _%val32499%_)
        (##structure-set!
         _%obj32498%_
         _%val32499%_
         '3
         character-port::t
         'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rchars-set!
      (lambda (_%obj32495%_ _%val32496%_)
        (##structure-set!
         _%obj32495%_
         _%val32496%_
         '4
         character-port::t
         'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rlines-set!
      (lambda (_%obj32492%_ _%val32493%_)
        (##structure-set!
         _%obj32492%_
         _%val32493%_
         '5
         character-port::t
         'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rcurline-set!
      (lambda (_%obj32489%_ _%val32490%_)
        (##structure-set!
         _%obj32489%_
         _%val32490%_
         '6
         character-port::t
         'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rbuf-fill-set!
      (lambda (_%obj32486%_ _%val32487%_)
        (##structure-set!
         _%obj32486%_
         _%val32487%_
         '7
         character-port::t
         'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-peek-eof?-set!
      (lambda (_%obj32483%_ _%val32484%_)
        (##structure-set!
         _%obj32483%_
         _%val32484%_
         '8
         character-port::t
         'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wbuf-set!
      (lambda (_%obj32480%_ _%val32481%_)
        (##structure-set!
         _%obj32480%_
         _%val32481%_
         '9
         character-port::t
         'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wlo-set!
      (lambda (_%obj32477%_ _%val32478%_)
        (##structure-set!
         _%obj32477%_
         _%val32478%_
         '10
         character-port::t
         'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-whi-set!
      (lambda (_%obj32474%_ _%val32475%_)
        (##structure-set!
         _%obj32474%_
         _%val32475%_
         '11
         character-port::t
         'whi)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wchars-set!
      (lambda (_%obj32471%_ _%val32472%_)
        (##structure-set!
         _%obj32471%_
         _%val32472%_
         '12
         character-port::t
         'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wlines-set!
      (lambda (_%obj32468%_ _%val32469%_)
        (##structure-set!
         _%obj32468%_
         _%val32469%_
         '13
         character-port::t
         'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wcurline-set!
      (lambda (_%obj32465%_ _%val32466%_)
        (##structure-set!
         _%obj32465%_
         _%val32466%_
         '14
         character-port::t
         'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wbuf-drain-set!
      (lambda (_%obj32462%_ _%val32463%_)
        (##structure-set!
         _%obj32462%_
         _%val32463%_
         '15
         character-port::t
         'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-input-readtable-set!
      (lambda (_%obj32459%_ _%val32460%_)
        (##structure-set!
         _%obj32459%_
         _%val32460%_
         '16
         character-port::t
         'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-output-readtable-set!
      (lambda (_%obj32456%_ _%val32457%_)
        (##structure-set!
         _%obj32456%_
         _%val32457%_
         '17
         character-port::t
         'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-output-width-set!
      (lambda (_%obj32453%_ _%val32454%_)
        (##structure-set!
         _%obj32453%_
         _%val32454%_
         '18
         character-port::t
         'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-read-datum-set!
      (lambda (_%obj32450%_ _%val32451%_)
        (##structure-set!
         _%obj32450%_
         _%val32451%_
         '19
         character-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-write-datum-set!
      (lambda (_%obj32447%_ _%val32448%_)
        (##structure-set!
         _%obj32447%_
         _%val32448%_
         '20
         character-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-newline-set!
      (lambda (_%obj32444%_ _%val32445%_)
        (##structure-set!
         _%obj32444%_
         _%val32445%_
         '21
         character-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-force-output-set!
      (lambda (_%obj32441%_ _%val32442%_)
        (##structure-set!
         _%obj32441%_
         _%val32442%_
         '22
         character-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-mutex-set!
      (lambda (_%obj32438%_ _%val32439%_)
        (##structure-set!
         _%obj32438%_
         _%val32439%_
         '23
         character-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rkind-set!
      (lambda (_%obj32435%_ _%val32436%_)
        (##structure-set!
         _%obj32435%_
         _%val32436%_
         '24
         character-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wkind-set!
      (lambda (_%obj32432%_ _%val32433%_)
        (##structure-set!
         _%obj32432%_
         _%val32433%_
         '25
         character-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-name-set!
      (lambda (_%obj32429%_ _%val32430%_)
        (##structure-set!
         _%obj32429%_
         _%val32430%_
         '26
         character-port::t
         'name)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wait-set!
      (lambda (_%obj32426%_ _%val32427%_)
        (##structure-set!
         _%obj32426%_
         _%val32427%_
         '27
         character-port::t
         'wait)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-close-set!
      (lambda (_%obj32423%_ _%val32424%_)
        (##structure-set!
         _%obj32423%_
         _%val32424%_
         '28
         character-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-roptions-set!
      (lambda (_%obj32420%_ _%val32421%_)
        (##structure-set!
         _%obj32420%_
         _%val32421%_
         '29
         character-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rtimeout-set!
      (lambda (_%obj32417%_ _%val32418%_)
        (##structure-set!
         _%obj32417%_
         _%val32418%_
         '30
         character-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-rtimeout-thunk-set!
      (lambda (_%obj32414%_ _%val32415%_)
        (##structure-set!
         _%obj32414%_
         _%val32415%_
         '31
         character-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-set-rtimeout-set!
      (lambda (_%obj32411%_ _%val32412%_)
        (##structure-set!
         _%obj32411%_
         _%val32412%_
         '32
         character-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-woptions-set!
      (lambda (_%obj32408%_ _%val32409%_)
        (##structure-set!
         _%obj32408%_
         _%val32409%_
         '33
         character-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wtimeout-set!
      (lambda (_%obj32405%_ _%val32406%_)
        (##structure-set!
         _%obj32405%_
         _%val32406%_
         '34
         character-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-wtimeout-thunk-set!
      (lambda (_%obj32402%_ _%val32403%_)
        (##structure-set!
         _%obj32402%_
         _%val32403%_
         '35
         character-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-set-wtimeout-set!
      (lambda (_%obj32399%_ _%val32400%_)
        (##structure-set!
         _%obj32399%_
         _%val32400%_
         '36
         character-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::character-port-io-exception-handler-set!
      (lambda (_%obj32394%_ _%val32396%_)
        (##structure-set!
         _%obj32394%_
         _%val32396%_
         '37
         character-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rbuf
      (lambda (_%obj32392%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32392%_
           '1
           byte-port::t
           'super-rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rlo
      (lambda (_%obj32390%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32390%_
           '2
           byte-port::t
           'super-rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rhi
      (lambda (_%obj32388%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32388%_
           '3
           byte-port::t
           'super-rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rbuf-fill
      (lambda (_%obj32386%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32386%_
           '4
           byte-port::t
           'super-rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-wbuf
      (lambda (_%obj32384%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32384%_
           '5
           byte-port::t
           'super-wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-wlo
      (lambda (_%obj32382%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32382%_
           '6
           byte-port::t
           'super-wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-whi
      (lambda (_%obj32380%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32380%_
           '7
           byte-port::t
           'super-whi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-wbuf-drain
      (lambda (_%obj32378%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32378%_
           '8
           byte-port::t
           'super-wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rbuf
      (lambda (_%obj32376%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32376%_ '9 byte-port::t 'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rlo
      (lambda (_%obj32374%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32374%_ '10 byte-port::t 'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rhi
      (lambda (_%obj32372%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32372%_ '11 byte-port::t 'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rchars
      (lambda (_%obj32370%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32370%_ '12 byte-port::t 'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rlines
      (lambda (_%obj32368%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32368%_ '13 byte-port::t 'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rcurline
      (lambda (_%obj32366%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32366%_
           '14
           byte-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rbuf-fill
      (lambda (_%obj32364%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32364%_
           '15
           byte-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-peek-eof?
      (lambda (_%obj32362%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32362%_
           '16
           byte-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wbuf
      (lambda (_%obj32360%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32360%_ '17 byte-port::t 'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wlo
      (lambda (_%obj32358%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32358%_ '18 byte-port::t 'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-whi
      (lambda (_%obj32356%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32356%_ '19 byte-port::t 'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wchars
      (lambda (_%obj32354%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32354%_ '20 byte-port::t 'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wlines
      (lambda (_%obj32352%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32352%_ '21 byte-port::t 'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wcurline
      (lambda (_%obj32350%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32350%_
           '22
           byte-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wbuf-drain
      (lambda (_%obj32348%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32348%_
           '23
           byte-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-input-readtable
      (lambda (_%obj32346%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32346%_
           '24
           byte-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-output-readtable
      (lambda (_%obj32344%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32344%_
           '25
           byte-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-output-width
      (lambda (_%obj32342%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32342%_
           '26
           byte-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-read-datum
      (lambda (_%obj32340%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32340%_
           '27
           byte-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-write-datum
      (lambda (_%obj32338%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32338%_
           '28
           byte-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-newline
      (lambda (_%obj32336%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32336%_ '29 byte-port::t 'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-force-output
      (lambda (_%obj32334%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32334%_
           '30
           byte-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-mutex
      (lambda (_%obj32332%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32332%_ '31 byte-port::t 'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rkind
      (lambda (_%obj32330%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32330%_ '32 byte-port::t 'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wkind
      (lambda (_%obj32328%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32328%_ '33 byte-port::t 'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-name
      (lambda (_%obj32326%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32326%_ '34 byte-port::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wait
      (lambda (_%obj32324%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32324%_ '35 byte-port::t 'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-close
      (lambda (_%obj32322%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj32322%_ '36 byte-port::t 'close))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-roptions
      (lambda (_%obj32320%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32320%_
           '37
           byte-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rtimeout
      (lambda (_%obj32318%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32318%_
           '38
           byte-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rtimeout-thunk
      (lambda (_%obj32316%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32316%_
           '39
           byte-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-set-rtimeout
      (lambda (_%obj32314%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32314%_
           '40
           byte-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-woptions
      (lambda (_%obj32312%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32312%_
           '41
           byte-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wtimeout
      (lambda (_%obj32310%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32310%_
           '42
           byte-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wtimeout-thunk
      (lambda (_%obj32308%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32308%_
           '43
           byte-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-set-wtimeout
      (lambda (_%obj32306%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32306%_
           '44
           byte-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-io-exception-handler
      (lambda (_%obj32304%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj32304%_
           '45
           byte-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rbuf-set!
      (lambda (_%obj32301%_ _%val32302%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32301%_
           _%val32302%_
           '1
           byte-port::t
           'super-rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rlo-set!
      (lambda (_%obj32298%_ _%val32299%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32298%_
           _%val32299%_
           '2
           byte-port::t
           'super-rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rhi-set!
      (lambda (_%obj32295%_ _%val32296%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32295%_
           _%val32296%_
           '3
           byte-port::t
           'super-rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-rbuf-fill-set!
      (lambda (_%obj32292%_ _%val32293%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32292%_
           _%val32293%_
           '4
           byte-port::t
           'super-rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-wbuf-set!
      (lambda (_%obj32289%_ _%val32290%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32289%_
           _%val32290%_
           '5
           byte-port::t
           'super-wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-wlo-set!
      (lambda (_%obj32286%_ _%val32287%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32286%_
           _%val32287%_
           '6
           byte-port::t
           'super-wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-whi-set!
      (lambda (_%obj32283%_ _%val32284%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32283%_
           _%val32284%_
           '7
           byte-port::t
           'super-whi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-super-wbuf-drain-set!
      (lambda (_%obj32280%_ _%val32281%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32280%_
           _%val32281%_
           '8
           byte-port::t
           'super-wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rbuf-set!
      (lambda (_%obj32277%_ _%val32278%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32277%_
           _%val32278%_
           '9
           byte-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rlo-set!
      (lambda (_%obj32274%_ _%val32275%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32274%_
           _%val32275%_
           '10
           byte-port::t
           'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rhi-set!
      (lambda (_%obj32271%_ _%val32272%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32271%_
           _%val32272%_
           '11
           byte-port::t
           'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rchars-set!
      (lambda (_%obj32268%_ _%val32269%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32268%_
           _%val32269%_
           '12
           byte-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rlines-set!
      (lambda (_%obj32265%_ _%val32266%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32265%_
           _%val32266%_
           '13
           byte-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rcurline-set!
      (lambda (_%obj32262%_ _%val32263%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32262%_
           _%val32263%_
           '14
           byte-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rbuf-fill-set!
      (lambda (_%obj32259%_ _%val32260%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32259%_
           _%val32260%_
           '15
           byte-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-peek-eof?-set!
      (lambda (_%obj32256%_ _%val32257%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32256%_
           _%val32257%_
           '16
           byte-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wbuf-set!
      (lambda (_%obj32253%_ _%val32254%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32253%_
           _%val32254%_
           '17
           byte-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wlo-set!
      (lambda (_%obj32250%_ _%val32251%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32250%_
           _%val32251%_
           '18
           byte-port::t
           'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-whi-set!
      (lambda (_%obj32247%_ _%val32248%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32247%_
           _%val32248%_
           '19
           byte-port::t
           'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wchars-set!
      (lambda (_%obj32244%_ _%val32245%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32244%_
           _%val32245%_
           '20
           byte-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wlines-set!
      (lambda (_%obj32241%_ _%val32242%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32241%_
           _%val32242%_
           '21
           byte-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wcurline-set!
      (lambda (_%obj32238%_ _%val32239%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32238%_
           _%val32239%_
           '22
           byte-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wbuf-drain-set!
      (lambda (_%obj32235%_ _%val32236%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32235%_
           _%val32236%_
           '23
           byte-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-input-readtable-set!
      (lambda (_%obj32232%_ _%val32233%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32232%_
           _%val32233%_
           '24
           byte-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-output-readtable-set!
      (lambda (_%obj32229%_ _%val32230%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32229%_
           _%val32230%_
           '25
           byte-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-output-width-set!
      (lambda (_%obj32226%_ _%val32227%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32226%_
           _%val32227%_
           '26
           byte-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-read-datum-set!
      (lambda (_%obj32223%_ _%val32224%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32223%_
           _%val32224%_
           '27
           byte-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-write-datum-set!
      (lambda (_%obj32220%_ _%val32221%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32220%_
           _%val32221%_
           '28
           byte-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-newline-set!
      (lambda (_%obj32217%_ _%val32218%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32217%_
           _%val32218%_
           '29
           byte-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-force-output-set!
      (lambda (_%obj32214%_ _%val32215%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32214%_
           _%val32215%_
           '30
           byte-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-mutex-set!
      (lambda (_%obj32211%_ _%val32212%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32211%_
           _%val32212%_
           '31
           byte-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rkind-set!
      (lambda (_%obj32208%_ _%val32209%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32208%_
           _%val32209%_
           '32
           byte-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wkind-set!
      (lambda (_%obj32205%_ _%val32206%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32205%_
           _%val32206%_
           '33
           byte-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-name-set!
      (lambda (_%obj32202%_ _%val32203%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32202%_
           _%val32203%_
           '34
           byte-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wait-set!
      (lambda (_%obj32199%_ _%val32200%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32199%_
           _%val32200%_
           '35
           byte-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-close-set!
      (lambda (_%obj32196%_ _%val32197%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32196%_
           _%val32197%_
           '36
           byte-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-roptions-set!
      (lambda (_%obj32193%_ _%val32194%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32193%_
           _%val32194%_
           '37
           byte-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rtimeout-set!
      (lambda (_%obj32190%_ _%val32191%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32190%_
           _%val32191%_
           '38
           byte-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-rtimeout-thunk-set!
      (lambda (_%obj32187%_ _%val32188%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32187%_
           _%val32188%_
           '39
           byte-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-set-rtimeout-set!
      (lambda (_%obj32184%_ _%val32185%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32184%_
           _%val32185%_
           '40
           byte-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-woptions-set!
      (lambda (_%obj32181%_ _%val32182%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32181%_
           _%val32182%_
           '41
           byte-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wtimeout-set!
      (lambda (_%obj32178%_ _%val32179%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32178%_
           _%val32179%_
           '42
           byte-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-wtimeout-thunk-set!
      (lambda (_%obj32175%_ _%val32176%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32175%_
           _%val32176%_
           '43
           byte-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-set-wtimeout-set!
      (lambda (_%obj32172%_ _%val32173%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32172%_
           _%val32173%_
           '44
           byte-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::byte-port-io-exception-handler-set!
      (lambda (_%obj32169%_ _%val32170%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj32169%_
           _%val32170%_
           '45
           byte-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rbuf
      (lambda (_%obj32167%_)
        (##structure-ref _%obj32167%_ '1 byte-port::t 'super-rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rlo
      (lambda (_%obj32165%_)
        (##structure-ref _%obj32165%_ '2 byte-port::t 'super-rlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rhi
      (lambda (_%obj32163%_)
        (##structure-ref _%obj32163%_ '3 byte-port::t 'super-rhi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rbuf-fill
      (lambda (_%obj32161%_)
        (##structure-ref _%obj32161%_ '4 byte-port::t 'super-rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-wbuf
      (lambda (_%obj32159%_)
        (##structure-ref _%obj32159%_ '5 byte-port::t 'super-wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-wlo
      (lambda (_%obj32157%_)
        (##structure-ref _%obj32157%_ '6 byte-port::t 'super-wlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-whi
      (lambda (_%obj32155%_)
        (##structure-ref _%obj32155%_ '7 byte-port::t 'super-whi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-wbuf-drain
      (lambda (_%obj32153%_)
        (##structure-ref _%obj32153%_ '8 byte-port::t 'super-wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rbuf
      (lambda (_%obj32151%_)
        (##structure-ref _%obj32151%_ '9 byte-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rlo
      (lambda (_%obj32149%_)
        (##structure-ref _%obj32149%_ '10 byte-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rhi
      (lambda (_%obj32147%_)
        (##structure-ref _%obj32147%_ '11 byte-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rchars
      (lambda (_%obj32145%_)
        (##structure-ref _%obj32145%_ '12 byte-port::t 'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rlines
      (lambda (_%obj32143%_)
        (##structure-ref _%obj32143%_ '13 byte-port::t 'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rcurline
      (lambda (_%obj32141%_)
        (##structure-ref _%obj32141%_ '14 byte-port::t 'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rbuf-fill
      (lambda (_%obj32139%_)
        (##structure-ref _%obj32139%_ '15 byte-port::t 'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-peek-eof?
      (lambda (_%obj32137%_)
        (##structure-ref _%obj32137%_ '16 byte-port::t 'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wbuf
      (lambda (_%obj32135%_)
        (##structure-ref _%obj32135%_ '17 byte-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wlo
      (lambda (_%obj32133%_)
        (##structure-ref _%obj32133%_ '18 byte-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-whi
      (lambda (_%obj32131%_)
        (##structure-ref _%obj32131%_ '19 byte-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wchars
      (lambda (_%obj32129%_)
        (##structure-ref _%obj32129%_ '20 byte-port::t 'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wlines
      (lambda (_%obj32127%_)
        (##structure-ref _%obj32127%_ '21 byte-port::t 'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wcurline
      (lambda (_%obj32125%_)
        (##structure-ref _%obj32125%_ '22 byte-port::t 'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wbuf-drain
      (lambda (_%obj32123%_)
        (##structure-ref _%obj32123%_ '23 byte-port::t 'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-input-readtable
      (lambda (_%obj32121%_)
        (##structure-ref _%obj32121%_ '24 byte-port::t 'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-output-readtable
      (lambda (_%obj32119%_)
        (##structure-ref _%obj32119%_ '25 byte-port::t 'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-output-width
      (lambda (_%obj32117%_)
        (##structure-ref _%obj32117%_ '26 byte-port::t 'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-read-datum
      (lambda (_%obj32115%_)
        (##structure-ref _%obj32115%_ '27 byte-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-write-datum
      (lambda (_%obj32113%_)
        (##structure-ref _%obj32113%_ '28 byte-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-newline
      (lambda (_%obj32111%_)
        (##structure-ref _%obj32111%_ '29 byte-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-force-output
      (lambda (_%obj32109%_)
        (##structure-ref _%obj32109%_ '30 byte-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-mutex
      (lambda (_%obj32107%_)
        (##structure-ref _%obj32107%_ '31 byte-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rkind
      (lambda (_%obj32105%_)
        (##structure-ref _%obj32105%_ '32 byte-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wkind
      (lambda (_%obj32103%_)
        (##structure-ref _%obj32103%_ '33 byte-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-name
      (lambda (_%obj32101%_)
        (##structure-ref _%obj32101%_ '34 byte-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wait
      (lambda (_%obj32099%_)
        (##structure-ref _%obj32099%_ '35 byte-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-close
      (lambda (_%obj32097%_)
        (##structure-ref _%obj32097%_ '36 byte-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-roptions
      (lambda (_%obj32095%_)
        (##structure-ref _%obj32095%_ '37 byte-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rtimeout
      (lambda (_%obj32093%_)
        (##structure-ref _%obj32093%_ '38 byte-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rtimeout-thunk
      (lambda (_%obj32091%_)
        (##structure-ref _%obj32091%_ '39 byte-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-set-rtimeout
      (lambda (_%obj32089%_)
        (##structure-ref _%obj32089%_ '40 byte-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-woptions
      (lambda (_%obj32087%_)
        (##structure-ref _%obj32087%_ '41 byte-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wtimeout
      (lambda (_%obj32085%_)
        (##structure-ref _%obj32085%_ '42 byte-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wtimeout-thunk
      (lambda (_%obj32083%_)
        (##structure-ref _%obj32083%_ '43 byte-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-set-wtimeout
      (lambda (_%obj32081%_)
        (##structure-ref _%obj32081%_ '44 byte-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-io-exception-handler
      (lambda (_%obj32079%_)
        (##structure-ref _%obj32079%_ '45 byte-port::t 'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rbuf-set!
      (lambda (_%obj32076%_ _%val32077%_)
        (##structure-set!
         _%obj32076%_
         _%val32077%_
         '1
         byte-port::t
         'super-rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rlo-set!
      (lambda (_%obj32073%_ _%val32074%_)
        (##structure-set!
         _%obj32073%_
         _%val32074%_
         '2
         byte-port::t
         'super-rlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rhi-set!
      (lambda (_%obj32070%_ _%val32071%_)
        (##structure-set!
         _%obj32070%_
         _%val32071%_
         '3
         byte-port::t
         'super-rhi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-rbuf-fill-set!
      (lambda (_%obj32067%_ _%val32068%_)
        (##structure-set!
         _%obj32067%_
         _%val32068%_
         '4
         byte-port::t
         'super-rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-wbuf-set!
      (lambda (_%obj32064%_ _%val32065%_)
        (##structure-set!
         _%obj32064%_
         _%val32065%_
         '5
         byte-port::t
         'super-wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-wlo-set!
      (lambda (_%obj32061%_ _%val32062%_)
        (##structure-set!
         _%obj32061%_
         _%val32062%_
         '6
         byte-port::t
         'super-wlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-whi-set!
      (lambda (_%obj32058%_ _%val32059%_)
        (##structure-set!
         _%obj32058%_
         _%val32059%_
         '7
         byte-port::t
         'super-whi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-super-wbuf-drain-set!
      (lambda (_%obj32055%_ _%val32056%_)
        (##structure-set!
         _%obj32055%_
         _%val32056%_
         '8
         byte-port::t
         'super-wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rbuf-set!
      (lambda (_%obj32052%_ _%val32053%_)
        (##structure-set! _%obj32052%_ _%val32053%_ '9 byte-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rlo-set!
      (lambda (_%obj32049%_ _%val32050%_)
        (##structure-set! _%obj32049%_ _%val32050%_ '10 byte-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rhi-set!
      (lambda (_%obj32046%_ _%val32047%_)
        (##structure-set! _%obj32046%_ _%val32047%_ '11 byte-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rchars-set!
      (lambda (_%obj32043%_ _%val32044%_)
        (##structure-set! _%obj32043%_ _%val32044%_ '12 byte-port::t 'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rlines-set!
      (lambda (_%obj32040%_ _%val32041%_)
        (##structure-set! _%obj32040%_ _%val32041%_ '13 byte-port::t 'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rcurline-set!
      (lambda (_%obj32037%_ _%val32038%_)
        (##structure-set!
         _%obj32037%_
         _%val32038%_
         '14
         byte-port::t
         'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rbuf-fill-set!
      (lambda (_%obj32034%_ _%val32035%_)
        (##structure-set!
         _%obj32034%_
         _%val32035%_
         '15
         byte-port::t
         'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-peek-eof?-set!
      (lambda (_%obj32031%_ _%val32032%_)
        (##structure-set!
         _%obj32031%_
         _%val32032%_
         '16
         byte-port::t
         'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wbuf-set!
      (lambda (_%obj32028%_ _%val32029%_)
        (##structure-set! _%obj32028%_ _%val32029%_ '17 byte-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wlo-set!
      (lambda (_%obj32025%_ _%val32026%_)
        (##structure-set! _%obj32025%_ _%val32026%_ '18 byte-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-whi-set!
      (lambda (_%obj32022%_ _%val32023%_)
        (##structure-set! _%obj32022%_ _%val32023%_ '19 byte-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wchars-set!
      (lambda (_%obj32019%_ _%val32020%_)
        (##structure-set! _%obj32019%_ _%val32020%_ '20 byte-port::t 'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wlines-set!
      (lambda (_%obj32016%_ _%val32017%_)
        (##structure-set! _%obj32016%_ _%val32017%_ '21 byte-port::t 'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wcurline-set!
      (lambda (_%obj32013%_ _%val32014%_)
        (##structure-set!
         _%obj32013%_
         _%val32014%_
         '22
         byte-port::t
         'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wbuf-drain-set!
      (lambda (_%obj32010%_ _%val32011%_)
        (##structure-set!
         _%obj32010%_
         _%val32011%_
         '23
         byte-port::t
         'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-input-readtable-set!
      (lambda (_%obj32007%_ _%val32008%_)
        (##structure-set!
         _%obj32007%_
         _%val32008%_
         '24
         byte-port::t
         'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-output-readtable-set!
      (lambda (_%obj32004%_ _%val32005%_)
        (##structure-set!
         _%obj32004%_
         _%val32005%_
         '25
         byte-port::t
         'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-output-width-set!
      (lambda (_%obj32001%_ _%val32002%_)
        (##structure-set!
         _%obj32001%_
         _%val32002%_
         '26
         byte-port::t
         'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-read-datum-set!
      (lambda (_%obj31998%_ _%val31999%_)
        (##structure-set!
         _%obj31998%_
         _%val31999%_
         '27
         byte-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-write-datum-set!
      (lambda (_%obj31995%_ _%val31996%_)
        (##structure-set!
         _%obj31995%_
         _%val31996%_
         '28
         byte-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-newline-set!
      (lambda (_%obj31992%_ _%val31993%_)
        (##structure-set!
         _%obj31992%_
         _%val31993%_
         '29
         byte-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-force-output-set!
      (lambda (_%obj31989%_ _%val31990%_)
        (##structure-set!
         _%obj31989%_
         _%val31990%_
         '30
         byte-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-mutex-set!
      (lambda (_%obj31986%_ _%val31987%_)
        (##structure-set! _%obj31986%_ _%val31987%_ '31 byte-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rkind-set!
      (lambda (_%obj31983%_ _%val31984%_)
        (##structure-set! _%obj31983%_ _%val31984%_ '32 byte-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wkind-set!
      (lambda (_%obj31980%_ _%val31981%_)
        (##structure-set! _%obj31980%_ _%val31981%_ '33 byte-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-name-set!
      (lambda (_%obj31977%_ _%val31978%_)
        (##structure-set! _%obj31977%_ _%val31978%_ '34 byte-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wait-set!
      (lambda (_%obj31974%_ _%val31975%_)
        (##structure-set! _%obj31974%_ _%val31975%_ '35 byte-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-close-set!
      (lambda (_%obj31971%_ _%val31972%_)
        (##structure-set! _%obj31971%_ _%val31972%_ '36 byte-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-roptions-set!
      (lambda (_%obj31968%_ _%val31969%_)
        (##structure-set!
         _%obj31968%_
         _%val31969%_
         '37
         byte-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rtimeout-set!
      (lambda (_%obj31965%_ _%val31966%_)
        (##structure-set!
         _%obj31965%_
         _%val31966%_
         '38
         byte-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-rtimeout-thunk-set!
      (lambda (_%obj31962%_ _%val31963%_)
        (##structure-set!
         _%obj31962%_
         _%val31963%_
         '39
         byte-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-set-rtimeout-set!
      (lambda (_%obj31959%_ _%val31960%_)
        (##structure-set!
         _%obj31959%_
         _%val31960%_
         '40
         byte-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-woptions-set!
      (lambda (_%obj31956%_ _%val31957%_)
        (##structure-set!
         _%obj31956%_
         _%val31957%_
         '41
         byte-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wtimeout-set!
      (lambda (_%obj31953%_ _%val31954%_)
        (##structure-set!
         _%obj31953%_
         _%val31954%_
         '42
         byte-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-wtimeout-thunk-set!
      (lambda (_%obj31950%_ _%val31951%_)
        (##structure-set!
         _%obj31950%_
         _%val31951%_
         '43
         byte-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-set-wtimeout-set!
      (lambda (_%obj31947%_ _%val31948%_)
        (##structure-set!
         _%obj31947%_
         _%val31948%_
         '44
         byte-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::byte-port-io-exception-handler-set!
      (lambda (_%obj31942%_ _%val31944%_)
        (##structure-set!
         _%obj31942%_
         _%val31944%_
         '45
         byte-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rdevice-condvar
      (lambda (_%obj31940%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31940%_
           '1
           device-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wdevice-condvar
      (lambda (_%obj31938%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31938%_
           '2
           device-port::t
           'wdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-event-condvar
      (lambda (_%obj31936%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31936%_
           '3
           device-port::t
           'event-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-name
      (lambda (_%obj31934%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31934%_
           '4
           device-port::t
           'super-name))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rbuf
      (lambda (_%obj31932%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31932%_
           '5
           device-port::t
           'super-rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rlo
      (lambda (_%obj31930%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31930%_
           '6
           device-port::t
           'super-rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rhi
      (lambda (_%obj31928%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31928%_
           '7
           device-port::t
           'super-rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rbuf-fill
      (lambda (_%obj31926%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31926%_
           '8
           device-port::t
           'super-rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-wbuf
      (lambda (_%obj31924%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31924%_
           '9
           device-port::t
           'super-wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-wlo
      (lambda (_%obj31922%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31922%_
           '10
           device-port::t
           'super-wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-whi
      (lambda (_%obj31920%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31920%_
           '11
           device-port::t
           'super-whi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-wbuf-drain
      (lambda (_%obj31918%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31918%_
           '12
           device-port::t
           'super-wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rbuf
      (lambda (_%obj31916%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31916%_ '13 device-port::t 'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rlo
      (lambda (_%obj31914%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31914%_ '14 device-port::t 'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rhi
      (lambda (_%obj31912%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31912%_ '15 device-port::t 'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rchars
      (lambda (_%obj31910%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31910%_
           '16
           device-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rlines
      (lambda (_%obj31908%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31908%_
           '17
           device-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rcurline
      (lambda (_%obj31906%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31906%_
           '18
           device-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rbuf-fill
      (lambda (_%obj31904%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31904%_
           '19
           device-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-peek-eof?
      (lambda (_%obj31902%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31902%_
           '20
           device-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wbuf
      (lambda (_%obj31900%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31900%_ '21 device-port::t 'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wlo
      (lambda (_%obj31898%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31898%_ '22 device-port::t 'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-whi
      (lambda (_%obj31896%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31896%_ '23 device-port::t 'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wchars
      (lambda (_%obj31894%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31894%_
           '24
           device-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wlines
      (lambda (_%obj31892%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31892%_
           '25
           device-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wcurline
      (lambda (_%obj31890%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31890%_
           '26
           device-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wbuf-drain
      (lambda (_%obj31888%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31888%_
           '27
           device-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-input-readtable
      (lambda (_%obj31886%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31886%_
           '28
           device-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-output-readtable
      (lambda (_%obj31884%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31884%_
           '29
           device-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-output-width
      (lambda (_%obj31882%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31882%_
           '30
           device-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-read-datum
      (lambda (_%obj31880%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31880%_
           '31
           device-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-write-datum
      (lambda (_%obj31878%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31878%_
           '32
           device-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-newline
      (lambda (_%obj31876%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31876%_
           '33
           device-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-force-output
      (lambda (_%obj31874%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31874%_
           '34
           device-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-mutex
      (lambda (_%obj31872%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31872%_ '35 device-port::t 'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rkind
      (lambda (_%obj31870%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31870%_ '36 device-port::t 'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wkind
      (lambda (_%obj31868%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31868%_ '37 device-port::t 'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-name
      (lambda (_%obj31866%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31866%_ '38 device-port::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wait
      (lambda (_%obj31864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31864%_ '39 device-port::t 'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-close
      (lambda (_%obj31862%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31862%_ '40 device-port::t 'close))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-roptions
      (lambda (_%obj31860%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31860%_
           '41
           device-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rtimeout
      (lambda (_%obj31858%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31858%_
           '42
           device-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rtimeout-thunk
      (lambda (_%obj31856%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31856%_
           '43
           device-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-set-rtimeout
      (lambda (_%obj31854%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31854%_
           '44
           device-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-woptions
      (lambda (_%obj31852%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31852%_
           '45
           device-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wtimeout
      (lambda (_%obj31850%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31850%_
           '46
           device-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wtimeout-thunk
      (lambda (_%obj31848%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31848%_
           '47
           device-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-set-wtimeout
      (lambda (_%obj31846%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31846%_
           '48
           device-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-io-exception-handler
      (lambda (_%obj31844%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31844%_
           '49
           device-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rdevice-condvar-set!
      (lambda (_%obj31841%_ _%val31842%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31841%_
           _%val31842%_
           '1
           device-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wdevice-condvar-set!
      (lambda (_%obj31838%_ _%val31839%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31838%_
           _%val31839%_
           '2
           device-port::t
           'wdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-event-condvar-set!
      (lambda (_%obj31835%_ _%val31836%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31835%_
           _%val31836%_
           '3
           device-port::t
           'event-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-name-set!
      (lambda (_%obj31832%_ _%val31833%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31832%_
           _%val31833%_
           '4
           device-port::t
           'super-name))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rbuf-set!
      (lambda (_%obj31829%_ _%val31830%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31829%_
           _%val31830%_
           '5
           device-port::t
           'super-rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rlo-set!
      (lambda (_%obj31826%_ _%val31827%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31826%_
           _%val31827%_
           '6
           device-port::t
           'super-rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rhi-set!
      (lambda (_%obj31823%_ _%val31824%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31823%_
           _%val31824%_
           '7
           device-port::t
           'super-rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-rbuf-fill-set!
      (lambda (_%obj31820%_ _%val31821%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31820%_
           _%val31821%_
           '8
           device-port::t
           'super-rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-wbuf-set!
      (lambda (_%obj31817%_ _%val31818%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31817%_
           _%val31818%_
           '9
           device-port::t
           'super-wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-wlo-set!
      (lambda (_%obj31814%_ _%val31815%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31814%_
           _%val31815%_
           '10
           device-port::t
           'super-wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-whi-set!
      (lambda (_%obj31811%_ _%val31812%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31811%_
           _%val31812%_
           '11
           device-port::t
           'super-whi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-super-wbuf-drain-set!
      (lambda (_%obj31808%_ _%val31809%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31808%_
           _%val31809%_
           '12
           device-port::t
           'super-wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rbuf-set!
      (lambda (_%obj31805%_ _%val31806%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31805%_
           _%val31806%_
           '13
           device-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rlo-set!
      (lambda (_%obj31802%_ _%val31803%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31802%_
           _%val31803%_
           '14
           device-port::t
           'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rhi-set!
      (lambda (_%obj31799%_ _%val31800%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31799%_
           _%val31800%_
           '15
           device-port::t
           'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rchars-set!
      (lambda (_%obj31796%_ _%val31797%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31796%_
           _%val31797%_
           '16
           device-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rlines-set!
      (lambda (_%obj31793%_ _%val31794%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31793%_
           _%val31794%_
           '17
           device-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rcurline-set!
      (lambda (_%obj31790%_ _%val31791%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31790%_
           _%val31791%_
           '18
           device-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rbuf-fill-set!
      (lambda (_%obj31787%_ _%val31788%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31787%_
           _%val31788%_
           '19
           device-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-peek-eof?-set!
      (lambda (_%obj31784%_ _%val31785%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31784%_
           _%val31785%_
           '20
           device-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wbuf-set!
      (lambda (_%obj31781%_ _%val31782%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31781%_
           _%val31782%_
           '21
           device-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wlo-set!
      (lambda (_%obj31778%_ _%val31779%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31778%_
           _%val31779%_
           '22
           device-port::t
           'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-whi-set!
      (lambda (_%obj31775%_ _%val31776%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31775%_
           _%val31776%_
           '23
           device-port::t
           'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wchars-set!
      (lambda (_%obj31772%_ _%val31773%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31772%_
           _%val31773%_
           '24
           device-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wlines-set!
      (lambda (_%obj31769%_ _%val31770%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31769%_
           _%val31770%_
           '25
           device-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wcurline-set!
      (lambda (_%obj31766%_ _%val31767%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31766%_
           _%val31767%_
           '26
           device-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wbuf-drain-set!
      (lambda (_%obj31763%_ _%val31764%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31763%_
           _%val31764%_
           '27
           device-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-input-readtable-set!
      (lambda (_%obj31760%_ _%val31761%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31760%_
           _%val31761%_
           '28
           device-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-output-readtable-set!
      (lambda (_%obj31757%_ _%val31758%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31757%_
           _%val31758%_
           '29
           device-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-output-width-set!
      (lambda (_%obj31754%_ _%val31755%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31754%_
           _%val31755%_
           '30
           device-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-read-datum-set!
      (lambda (_%obj31751%_ _%val31752%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31751%_
           _%val31752%_
           '31
           device-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-write-datum-set!
      (lambda (_%obj31748%_ _%val31749%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31748%_
           _%val31749%_
           '32
           device-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-newline-set!
      (lambda (_%obj31745%_ _%val31746%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31745%_
           _%val31746%_
           '33
           device-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-force-output-set!
      (lambda (_%obj31742%_ _%val31743%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31742%_
           _%val31743%_
           '34
           device-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-mutex-set!
      (lambda (_%obj31739%_ _%val31740%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31739%_
           _%val31740%_
           '35
           device-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rkind-set!
      (lambda (_%obj31736%_ _%val31737%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31736%_
           _%val31737%_
           '36
           device-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wkind-set!
      (lambda (_%obj31733%_ _%val31734%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31733%_
           _%val31734%_
           '37
           device-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-name-set!
      (lambda (_%obj31730%_ _%val31731%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31730%_
           _%val31731%_
           '38
           device-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wait-set!
      (lambda (_%obj31727%_ _%val31728%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31727%_
           _%val31728%_
           '39
           device-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-close-set!
      (lambda (_%obj31724%_ _%val31725%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31724%_
           _%val31725%_
           '40
           device-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-roptions-set!
      (lambda (_%obj31721%_ _%val31722%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31721%_
           _%val31722%_
           '41
           device-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rtimeout-set!
      (lambda (_%obj31718%_ _%val31719%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31718%_
           _%val31719%_
           '42
           device-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-rtimeout-thunk-set!
      (lambda (_%obj31715%_ _%val31716%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31715%_
           _%val31716%_
           '43
           device-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-set-rtimeout-set!
      (lambda (_%obj31712%_ _%val31713%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31712%_
           _%val31713%_
           '44
           device-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-woptions-set!
      (lambda (_%obj31709%_ _%val31710%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31709%_
           _%val31710%_
           '45
           device-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wtimeout-set!
      (lambda (_%obj31706%_ _%val31707%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31706%_
           _%val31707%_
           '46
           device-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-wtimeout-thunk-set!
      (lambda (_%obj31703%_ _%val31704%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31703%_
           _%val31704%_
           '47
           device-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-set-wtimeout-set!
      (lambda (_%obj31700%_ _%val31701%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31700%_
           _%val31701%_
           '48
           device-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::device-port-io-exception-handler-set!
      (lambda (_%obj31697%_ _%val31698%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31697%_
           _%val31698%_
           '49
           device-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rdevice-condvar
      (lambda (_%obj31695%_)
        (##structure-ref _%obj31695%_ '1 device-port::t 'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wdevice-condvar
      (lambda (_%obj31693%_)
        (##structure-ref _%obj31693%_ '2 device-port::t 'wdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-event-condvar
      (lambda (_%obj31691%_)
        (##structure-ref _%obj31691%_ '3 device-port::t 'event-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-name
      (lambda (_%obj31689%_)
        (##structure-ref _%obj31689%_ '4 device-port::t 'super-name)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rbuf
      (lambda (_%obj31687%_)
        (##structure-ref _%obj31687%_ '5 device-port::t 'super-rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rlo
      (lambda (_%obj31685%_)
        (##structure-ref _%obj31685%_ '6 device-port::t 'super-rlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rhi
      (lambda (_%obj31683%_)
        (##structure-ref _%obj31683%_ '7 device-port::t 'super-rhi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rbuf-fill
      (lambda (_%obj31681%_)
        (##structure-ref _%obj31681%_ '8 device-port::t 'super-rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-wbuf
      (lambda (_%obj31679%_)
        (##structure-ref _%obj31679%_ '9 device-port::t 'super-wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-wlo
      (lambda (_%obj31677%_)
        (##structure-ref _%obj31677%_ '10 device-port::t 'super-wlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-whi
      (lambda (_%obj31675%_)
        (##structure-ref _%obj31675%_ '11 device-port::t 'super-whi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-wbuf-drain
      (lambda (_%obj31673%_)
        (##structure-ref _%obj31673%_ '12 device-port::t 'super-wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rbuf
      (lambda (_%obj31671%_)
        (##structure-ref _%obj31671%_ '13 device-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rlo
      (lambda (_%obj31669%_)
        (##structure-ref _%obj31669%_ '14 device-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rhi
      (lambda (_%obj31667%_)
        (##structure-ref _%obj31667%_ '15 device-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rchars
      (lambda (_%obj31665%_)
        (##structure-ref _%obj31665%_ '16 device-port::t 'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rlines
      (lambda (_%obj31663%_)
        (##structure-ref _%obj31663%_ '17 device-port::t 'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rcurline
      (lambda (_%obj31661%_)
        (##structure-ref _%obj31661%_ '18 device-port::t 'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rbuf-fill
      (lambda (_%obj31659%_)
        (##structure-ref _%obj31659%_ '19 device-port::t 'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-peek-eof?
      (lambda (_%obj31657%_)
        (##structure-ref _%obj31657%_ '20 device-port::t 'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wbuf
      (lambda (_%obj31655%_)
        (##structure-ref _%obj31655%_ '21 device-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wlo
      (lambda (_%obj31653%_)
        (##structure-ref _%obj31653%_ '22 device-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-whi
      (lambda (_%obj31651%_)
        (##structure-ref _%obj31651%_ '23 device-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wchars
      (lambda (_%obj31649%_)
        (##structure-ref _%obj31649%_ '24 device-port::t 'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wlines
      (lambda (_%obj31647%_)
        (##structure-ref _%obj31647%_ '25 device-port::t 'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wcurline
      (lambda (_%obj31645%_)
        (##structure-ref _%obj31645%_ '26 device-port::t 'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wbuf-drain
      (lambda (_%obj31643%_)
        (##structure-ref _%obj31643%_ '27 device-port::t 'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-input-readtable
      (lambda (_%obj31641%_)
        (##structure-ref _%obj31641%_ '28 device-port::t 'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-output-readtable
      (lambda (_%obj31639%_)
        (##structure-ref _%obj31639%_ '29 device-port::t 'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-output-width
      (lambda (_%obj31637%_)
        (##structure-ref _%obj31637%_ '30 device-port::t 'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-read-datum
      (lambda (_%obj31635%_)
        (##structure-ref _%obj31635%_ '31 device-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-write-datum
      (lambda (_%obj31633%_)
        (##structure-ref _%obj31633%_ '32 device-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-newline
      (lambda (_%obj31631%_)
        (##structure-ref _%obj31631%_ '33 device-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-force-output
      (lambda (_%obj31629%_)
        (##structure-ref _%obj31629%_ '34 device-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-mutex
      (lambda (_%obj31627%_)
        (##structure-ref _%obj31627%_ '35 device-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rkind
      (lambda (_%obj31625%_)
        (##structure-ref _%obj31625%_ '36 device-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wkind
      (lambda (_%obj31623%_)
        (##structure-ref _%obj31623%_ '37 device-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-name
      (lambda (_%obj31621%_)
        (##structure-ref _%obj31621%_ '38 device-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wait
      (lambda (_%obj31619%_)
        (##structure-ref _%obj31619%_ '39 device-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-close
      (lambda (_%obj31617%_)
        (##structure-ref _%obj31617%_ '40 device-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-roptions
      (lambda (_%obj31615%_)
        (##structure-ref _%obj31615%_ '41 device-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rtimeout
      (lambda (_%obj31613%_)
        (##structure-ref _%obj31613%_ '42 device-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rtimeout-thunk
      (lambda (_%obj31611%_)
        (##structure-ref _%obj31611%_ '43 device-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-set-rtimeout
      (lambda (_%obj31609%_)
        (##structure-ref _%obj31609%_ '44 device-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-woptions
      (lambda (_%obj31607%_)
        (##structure-ref _%obj31607%_ '45 device-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wtimeout
      (lambda (_%obj31605%_)
        (##structure-ref _%obj31605%_ '46 device-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wtimeout-thunk
      (lambda (_%obj31603%_)
        (##structure-ref _%obj31603%_ '47 device-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-set-wtimeout
      (lambda (_%obj31601%_)
        (##structure-ref _%obj31601%_ '48 device-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-io-exception-handler
      (lambda (_%obj31599%_)
        (##structure-ref
         _%obj31599%_
         '49
         device-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rdevice-condvar-set!
      (lambda (_%obj31596%_ _%val31597%_)
        (##structure-set!
         _%obj31596%_
         _%val31597%_
         '1
         device-port::t
         'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wdevice-condvar-set!
      (lambda (_%obj31593%_ _%val31594%_)
        (##structure-set!
         _%obj31593%_
         _%val31594%_
         '2
         device-port::t
         'wdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-event-condvar-set!
      (lambda (_%obj31590%_ _%val31591%_)
        (##structure-set!
         _%obj31590%_
         _%val31591%_
         '3
         device-port::t
         'event-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-name-set!
      (lambda (_%obj31587%_ _%val31588%_)
        (##structure-set!
         _%obj31587%_
         _%val31588%_
         '4
         device-port::t
         'super-name)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rbuf-set!
      (lambda (_%obj31584%_ _%val31585%_)
        (##structure-set!
         _%obj31584%_
         _%val31585%_
         '5
         device-port::t
         'super-rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rlo-set!
      (lambda (_%obj31581%_ _%val31582%_)
        (##structure-set!
         _%obj31581%_
         _%val31582%_
         '6
         device-port::t
         'super-rlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rhi-set!
      (lambda (_%obj31578%_ _%val31579%_)
        (##structure-set!
         _%obj31578%_
         _%val31579%_
         '7
         device-port::t
         'super-rhi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-rbuf-fill-set!
      (lambda (_%obj31575%_ _%val31576%_)
        (##structure-set!
         _%obj31575%_
         _%val31576%_
         '8
         device-port::t
         'super-rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-wbuf-set!
      (lambda (_%obj31572%_ _%val31573%_)
        (##structure-set!
         _%obj31572%_
         _%val31573%_
         '9
         device-port::t
         'super-wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-wlo-set!
      (lambda (_%obj31569%_ _%val31570%_)
        (##structure-set!
         _%obj31569%_
         _%val31570%_
         '10
         device-port::t
         'super-wlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-whi-set!
      (lambda (_%obj31566%_ _%val31567%_)
        (##structure-set!
         _%obj31566%_
         _%val31567%_
         '11
         device-port::t
         'super-whi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-super-wbuf-drain-set!
      (lambda (_%obj31563%_ _%val31564%_)
        (##structure-set!
         _%obj31563%_
         _%val31564%_
         '12
         device-port::t
         'super-wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rbuf-set!
      (lambda (_%obj31560%_ _%val31561%_)
        (##structure-set! _%obj31560%_ _%val31561%_ '13 device-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rlo-set!
      (lambda (_%obj31557%_ _%val31558%_)
        (##structure-set! _%obj31557%_ _%val31558%_ '14 device-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rhi-set!
      (lambda (_%obj31554%_ _%val31555%_)
        (##structure-set! _%obj31554%_ _%val31555%_ '15 device-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rchars-set!
      (lambda (_%obj31551%_ _%val31552%_)
        (##structure-set!
         _%obj31551%_
         _%val31552%_
         '16
         device-port::t
         'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rlines-set!
      (lambda (_%obj31548%_ _%val31549%_)
        (##structure-set!
         _%obj31548%_
         _%val31549%_
         '17
         device-port::t
         'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rcurline-set!
      (lambda (_%obj31545%_ _%val31546%_)
        (##structure-set!
         _%obj31545%_
         _%val31546%_
         '18
         device-port::t
         'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rbuf-fill-set!
      (lambda (_%obj31542%_ _%val31543%_)
        (##structure-set!
         _%obj31542%_
         _%val31543%_
         '19
         device-port::t
         'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-peek-eof?-set!
      (lambda (_%obj31539%_ _%val31540%_)
        (##structure-set!
         _%obj31539%_
         _%val31540%_
         '20
         device-port::t
         'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wbuf-set!
      (lambda (_%obj31536%_ _%val31537%_)
        (##structure-set! _%obj31536%_ _%val31537%_ '21 device-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wlo-set!
      (lambda (_%obj31533%_ _%val31534%_)
        (##structure-set! _%obj31533%_ _%val31534%_ '22 device-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-whi-set!
      (lambda (_%obj31530%_ _%val31531%_)
        (##structure-set! _%obj31530%_ _%val31531%_ '23 device-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wchars-set!
      (lambda (_%obj31527%_ _%val31528%_)
        (##structure-set!
         _%obj31527%_
         _%val31528%_
         '24
         device-port::t
         'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wlines-set!
      (lambda (_%obj31524%_ _%val31525%_)
        (##structure-set!
         _%obj31524%_
         _%val31525%_
         '25
         device-port::t
         'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wcurline-set!
      (lambda (_%obj31521%_ _%val31522%_)
        (##structure-set!
         _%obj31521%_
         _%val31522%_
         '26
         device-port::t
         'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wbuf-drain-set!
      (lambda (_%obj31518%_ _%val31519%_)
        (##structure-set!
         _%obj31518%_
         _%val31519%_
         '27
         device-port::t
         'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-input-readtable-set!
      (lambda (_%obj31515%_ _%val31516%_)
        (##structure-set!
         _%obj31515%_
         _%val31516%_
         '28
         device-port::t
         'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-output-readtable-set!
      (lambda (_%obj31512%_ _%val31513%_)
        (##structure-set!
         _%obj31512%_
         _%val31513%_
         '29
         device-port::t
         'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-output-width-set!
      (lambda (_%obj31509%_ _%val31510%_)
        (##structure-set!
         _%obj31509%_
         _%val31510%_
         '30
         device-port::t
         'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-read-datum-set!
      (lambda (_%obj31506%_ _%val31507%_)
        (##structure-set!
         _%obj31506%_
         _%val31507%_
         '31
         device-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-write-datum-set!
      (lambda (_%obj31503%_ _%val31504%_)
        (##structure-set!
         _%obj31503%_
         _%val31504%_
         '32
         device-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-newline-set!
      (lambda (_%obj31500%_ _%val31501%_)
        (##structure-set!
         _%obj31500%_
         _%val31501%_
         '33
         device-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-force-output-set!
      (lambda (_%obj31497%_ _%val31498%_)
        (##structure-set!
         _%obj31497%_
         _%val31498%_
         '34
         device-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-mutex-set!
      (lambda (_%obj31494%_ _%val31495%_)
        (##structure-set!
         _%obj31494%_
         _%val31495%_
         '35
         device-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rkind-set!
      (lambda (_%obj31491%_ _%val31492%_)
        (##structure-set!
         _%obj31491%_
         _%val31492%_
         '36
         device-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wkind-set!
      (lambda (_%obj31488%_ _%val31489%_)
        (##structure-set!
         _%obj31488%_
         _%val31489%_
         '37
         device-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-name-set!
      (lambda (_%obj31485%_ _%val31486%_)
        (##structure-set! _%obj31485%_ _%val31486%_ '38 device-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wait-set!
      (lambda (_%obj31482%_ _%val31483%_)
        (##structure-set! _%obj31482%_ _%val31483%_ '39 device-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-close-set!
      (lambda (_%obj31479%_ _%val31480%_)
        (##structure-set!
         _%obj31479%_
         _%val31480%_
         '40
         device-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-roptions-set!
      (lambda (_%obj31476%_ _%val31477%_)
        (##structure-set!
         _%obj31476%_
         _%val31477%_
         '41
         device-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rtimeout-set!
      (lambda (_%obj31473%_ _%val31474%_)
        (##structure-set!
         _%obj31473%_
         _%val31474%_
         '42
         device-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-rtimeout-thunk-set!
      (lambda (_%obj31470%_ _%val31471%_)
        (##structure-set!
         _%obj31470%_
         _%val31471%_
         '43
         device-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-set-rtimeout-set!
      (lambda (_%obj31467%_ _%val31468%_)
        (##structure-set!
         _%obj31467%_
         _%val31468%_
         '44
         device-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-woptions-set!
      (lambda (_%obj31464%_ _%val31465%_)
        (##structure-set!
         _%obj31464%_
         _%val31465%_
         '45
         device-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wtimeout-set!
      (lambda (_%obj31461%_ _%val31462%_)
        (##structure-set!
         _%obj31461%_
         _%val31462%_
         '46
         device-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-wtimeout-thunk-set!
      (lambda (_%obj31458%_ _%val31459%_)
        (##structure-set!
         _%obj31458%_
         _%val31459%_
         '47
         device-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-set-wtimeout-set!
      (lambda (_%obj31455%_ _%val31456%_)
        (##structure-set!
         _%obj31455%_
         _%val31456%_
         '48
         device-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::device-port-io-exception-handler-set!
      (lambda (_%obj31450%_ _%val31452%_)
        (##structure-set!
         _%obj31450%_
         _%val31452%_
         '49
         device-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rbuf
      (lambda (_%obj31448%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31448%_ '1 vector-port::t 'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rlo
      (lambda (_%obj31446%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31446%_ '2 vector-port::t 'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rhi
      (lambda (_%obj31444%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31444%_ '3 vector-port::t 'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rbuf-fill
      (lambda (_%obj31442%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31442%_
           '4
           vector-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wbuf
      (lambda (_%obj31440%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31440%_ '5 vector-port::t 'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wlo
      (lambda (_%obj31438%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31438%_ '6 vector-port::t 'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-whi
      (lambda (_%obj31436%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31436%_ '7 vector-port::t 'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wbuf-drain
      (lambda (_%obj31434%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31434%_
           '8
           vector-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-peer
      (lambda (_%obj31432%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31432%_ '9 vector-port::t 'peer))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-fifo
      (lambda (_%obj31430%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31430%_ '10 vector-port::t 'fifo))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rcondvar
      (lambda (_%obj31428%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31428%_
           '11
           vector-port::t
           'rcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wcondvar
      (lambda (_%obj31426%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31426%_
           '12
           vector-port::t
           'wcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-capacity
      (lambda (_%obj31424%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31424%_
           '13
           vector-port::t
           'capacity))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-read-datum
      (lambda (_%obj31422%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31422%_
           '14
           vector-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-write-datum
      (lambda (_%obj31420%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31420%_
           '15
           vector-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-newline
      (lambda (_%obj31418%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31418%_
           '16
           vector-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-force-output
      (lambda (_%obj31416%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31416%_
           '17
           vector-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-mutex
      (lambda (_%obj31414%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31414%_ '18 vector-port::t 'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rkind
      (lambda (_%obj31412%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31412%_ '19 vector-port::t 'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wkind
      (lambda (_%obj31410%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31410%_ '20 vector-port::t 'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-name
      (lambda (_%obj31408%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31408%_ '21 vector-port::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wait
      (lambda (_%obj31406%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31406%_ '22 vector-port::t 'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-close
      (lambda (_%obj31404%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31404%_ '23 vector-port::t 'close))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-roptions
      (lambda (_%obj31402%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31402%_
           '24
           vector-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rtimeout
      (lambda (_%obj31400%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31400%_
           '25
           vector-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rtimeout-thunk
      (lambda (_%obj31398%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31398%_
           '26
           vector-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-set-rtimeout
      (lambda (_%obj31396%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31396%_
           '27
           vector-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-woptions
      (lambda (_%obj31394%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31394%_
           '28
           vector-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wtimeout
      (lambda (_%obj31392%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31392%_
           '29
           vector-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wtimeout-thunk
      (lambda (_%obj31390%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31390%_
           '30
           vector-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-set-wtimeout
      (lambda (_%obj31388%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31388%_
           '31
           vector-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-io-exception-handler
      (lambda (_%obj31386%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31386%_
           '32
           vector-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rbuf-set!
      (lambda (_%obj31383%_ _%val31384%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31383%_
           _%val31384%_
           '1
           vector-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rlo-set!
      (lambda (_%obj31380%_ _%val31381%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31380%_
           _%val31381%_
           '2
           vector-port::t
           'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rhi-set!
      (lambda (_%obj31377%_ _%val31378%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31377%_
           _%val31378%_
           '3
           vector-port::t
           'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rbuf-fill-set!
      (lambda (_%obj31374%_ _%val31375%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31374%_
           _%val31375%_
           '4
           vector-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wbuf-set!
      (lambda (_%obj31371%_ _%val31372%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31371%_
           _%val31372%_
           '5
           vector-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wlo-set!
      (lambda (_%obj31368%_ _%val31369%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31368%_
           _%val31369%_
           '6
           vector-port::t
           'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-whi-set!
      (lambda (_%obj31365%_ _%val31366%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31365%_
           _%val31366%_
           '7
           vector-port::t
           'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wbuf-drain-set!
      (lambda (_%obj31362%_ _%val31363%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31362%_
           _%val31363%_
           '8
           vector-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-peer-set!
      (lambda (_%obj31359%_ _%val31360%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31359%_
           _%val31360%_
           '9
           vector-port::t
           'peer))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-fifo-set!
      (lambda (_%obj31356%_ _%val31357%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31356%_
           _%val31357%_
           '10
           vector-port::t
           'fifo))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rcondvar-set!
      (lambda (_%obj31353%_ _%val31354%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31353%_
           _%val31354%_
           '11
           vector-port::t
           'rcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wcondvar-set!
      (lambda (_%obj31350%_ _%val31351%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31350%_
           _%val31351%_
           '12
           vector-port::t
           'wcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-capacity-set!
      (lambda (_%obj31347%_ _%val31348%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31347%_
           _%val31348%_
           '13
           vector-port::t
           'capacity))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-read-datum-set!
      (lambda (_%obj31344%_ _%val31345%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31344%_
           _%val31345%_
           '14
           vector-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-write-datum-set!
      (lambda (_%obj31341%_ _%val31342%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31341%_
           _%val31342%_
           '15
           vector-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-newline-set!
      (lambda (_%obj31338%_ _%val31339%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31338%_
           _%val31339%_
           '16
           vector-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-force-output-set!
      (lambda (_%obj31335%_ _%val31336%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31335%_
           _%val31336%_
           '17
           vector-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-mutex-set!
      (lambda (_%obj31332%_ _%val31333%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31332%_
           _%val31333%_
           '18
           vector-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rkind-set!
      (lambda (_%obj31329%_ _%val31330%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31329%_
           _%val31330%_
           '19
           vector-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wkind-set!
      (lambda (_%obj31326%_ _%val31327%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31326%_
           _%val31327%_
           '20
           vector-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-name-set!
      (lambda (_%obj31323%_ _%val31324%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31323%_
           _%val31324%_
           '21
           vector-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wait-set!
      (lambda (_%obj31320%_ _%val31321%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31320%_
           _%val31321%_
           '22
           vector-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-close-set!
      (lambda (_%obj31317%_ _%val31318%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31317%_
           _%val31318%_
           '23
           vector-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-roptions-set!
      (lambda (_%obj31314%_ _%val31315%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31314%_
           _%val31315%_
           '24
           vector-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rtimeout-set!
      (lambda (_%obj31311%_ _%val31312%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31311%_
           _%val31312%_
           '25
           vector-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-rtimeout-thunk-set!
      (lambda (_%obj31308%_ _%val31309%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31308%_
           _%val31309%_
           '26
           vector-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-set-rtimeout-set!
      (lambda (_%obj31305%_ _%val31306%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31305%_
           _%val31306%_
           '27
           vector-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-woptions-set!
      (lambda (_%obj31302%_ _%val31303%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31302%_
           _%val31303%_
           '28
           vector-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wtimeout-set!
      (lambda (_%obj31299%_ _%val31300%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31299%_
           _%val31300%_
           '29
           vector-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-wtimeout-thunk-set!
      (lambda (_%obj31296%_ _%val31297%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31296%_
           _%val31297%_
           '30
           vector-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-set-wtimeout-set!
      (lambda (_%obj31293%_ _%val31294%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31293%_
           _%val31294%_
           '31
           vector-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::vector-port-io-exception-handler-set!
      (lambda (_%obj31290%_ _%val31291%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31290%_
           _%val31291%_
           '32
           vector-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rbuf
      (lambda (_%obj31288%_)
        (##structure-ref _%obj31288%_ '1 vector-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rlo
      (lambda (_%obj31286%_)
        (##structure-ref _%obj31286%_ '2 vector-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rhi
      (lambda (_%obj31284%_)
        (##structure-ref _%obj31284%_ '3 vector-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rbuf-fill
      (lambda (_%obj31282%_)
        (##structure-ref _%obj31282%_ '4 vector-port::t 'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wbuf
      (lambda (_%obj31280%_)
        (##structure-ref _%obj31280%_ '5 vector-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wlo
      (lambda (_%obj31278%_)
        (##structure-ref _%obj31278%_ '6 vector-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-whi
      (lambda (_%obj31276%_)
        (##structure-ref _%obj31276%_ '7 vector-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wbuf-drain
      (lambda (_%obj31274%_)
        (##structure-ref _%obj31274%_ '8 vector-port::t 'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-peer
      (lambda (_%obj31272%_)
        (##structure-ref _%obj31272%_ '9 vector-port::t 'peer)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-fifo
      (lambda (_%obj31270%_)
        (##structure-ref _%obj31270%_ '10 vector-port::t 'fifo)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rcondvar
      (lambda (_%obj31268%_)
        (##structure-ref _%obj31268%_ '11 vector-port::t 'rcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wcondvar
      (lambda (_%obj31266%_)
        (##structure-ref _%obj31266%_ '12 vector-port::t 'wcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-capacity
      (lambda (_%obj31264%_)
        (##structure-ref _%obj31264%_ '13 vector-port::t 'capacity)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-read-datum
      (lambda (_%obj31262%_)
        (##structure-ref _%obj31262%_ '14 vector-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-write-datum
      (lambda (_%obj31260%_)
        (##structure-ref _%obj31260%_ '15 vector-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-newline
      (lambda (_%obj31258%_)
        (##structure-ref _%obj31258%_ '16 vector-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-force-output
      (lambda (_%obj31256%_)
        (##structure-ref _%obj31256%_ '17 vector-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-mutex
      (lambda (_%obj31254%_)
        (##structure-ref _%obj31254%_ '18 vector-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rkind
      (lambda (_%obj31252%_)
        (##structure-ref _%obj31252%_ '19 vector-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wkind
      (lambda (_%obj31250%_)
        (##structure-ref _%obj31250%_ '20 vector-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-name
      (lambda (_%obj31248%_)
        (##structure-ref _%obj31248%_ '21 vector-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wait
      (lambda (_%obj31246%_)
        (##structure-ref _%obj31246%_ '22 vector-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-close
      (lambda (_%obj31244%_)
        (##structure-ref _%obj31244%_ '23 vector-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-roptions
      (lambda (_%obj31242%_)
        (##structure-ref _%obj31242%_ '24 vector-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rtimeout
      (lambda (_%obj31240%_)
        (##structure-ref _%obj31240%_ '25 vector-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rtimeout-thunk
      (lambda (_%obj31238%_)
        (##structure-ref _%obj31238%_ '26 vector-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-set-rtimeout
      (lambda (_%obj31236%_)
        (##structure-ref _%obj31236%_ '27 vector-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-woptions
      (lambda (_%obj31234%_)
        (##structure-ref _%obj31234%_ '28 vector-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wtimeout
      (lambda (_%obj31232%_)
        (##structure-ref _%obj31232%_ '29 vector-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wtimeout-thunk
      (lambda (_%obj31230%_)
        (##structure-ref _%obj31230%_ '30 vector-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-set-wtimeout
      (lambda (_%obj31228%_)
        (##structure-ref _%obj31228%_ '31 vector-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-io-exception-handler
      (lambda (_%obj31226%_)
        (##structure-ref
         _%obj31226%_
         '32
         vector-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rbuf-set!
      (lambda (_%obj31223%_ _%val31224%_)
        (##structure-set! _%obj31223%_ _%val31224%_ '1 vector-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rlo-set!
      (lambda (_%obj31220%_ _%val31221%_)
        (##structure-set! _%obj31220%_ _%val31221%_ '2 vector-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rhi-set!
      (lambda (_%obj31217%_ _%val31218%_)
        (##structure-set! _%obj31217%_ _%val31218%_ '3 vector-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rbuf-fill-set!
      (lambda (_%obj31214%_ _%val31215%_)
        (##structure-set!
         _%obj31214%_
         _%val31215%_
         '4
         vector-port::t
         'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wbuf-set!
      (lambda (_%obj31211%_ _%val31212%_)
        (##structure-set! _%obj31211%_ _%val31212%_ '5 vector-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wlo-set!
      (lambda (_%obj31208%_ _%val31209%_)
        (##structure-set! _%obj31208%_ _%val31209%_ '6 vector-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-whi-set!
      (lambda (_%obj31205%_ _%val31206%_)
        (##structure-set! _%obj31205%_ _%val31206%_ '7 vector-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wbuf-drain-set!
      (lambda (_%obj31202%_ _%val31203%_)
        (##structure-set!
         _%obj31202%_
         _%val31203%_
         '8
         vector-port::t
         'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-peer-set!
      (lambda (_%obj31199%_ _%val31200%_)
        (##structure-set! _%obj31199%_ _%val31200%_ '9 vector-port::t 'peer)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-fifo-set!
      (lambda (_%obj31196%_ _%val31197%_)
        (##structure-set! _%obj31196%_ _%val31197%_ '10 vector-port::t 'fifo)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rcondvar-set!
      (lambda (_%obj31193%_ _%val31194%_)
        (##structure-set!
         _%obj31193%_
         _%val31194%_
         '11
         vector-port::t
         'rcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wcondvar-set!
      (lambda (_%obj31190%_ _%val31191%_)
        (##structure-set!
         _%obj31190%_
         _%val31191%_
         '12
         vector-port::t
         'wcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-capacity-set!
      (lambda (_%obj31187%_ _%val31188%_)
        (##structure-set!
         _%obj31187%_
         _%val31188%_
         '13
         vector-port::t
         'capacity)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-read-datum-set!
      (lambda (_%obj31184%_ _%val31185%_)
        (##structure-set!
         _%obj31184%_
         _%val31185%_
         '14
         vector-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-write-datum-set!
      (lambda (_%obj31181%_ _%val31182%_)
        (##structure-set!
         _%obj31181%_
         _%val31182%_
         '15
         vector-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-newline-set!
      (lambda (_%obj31178%_ _%val31179%_)
        (##structure-set!
         _%obj31178%_
         _%val31179%_
         '16
         vector-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-force-output-set!
      (lambda (_%obj31175%_ _%val31176%_)
        (##structure-set!
         _%obj31175%_
         _%val31176%_
         '17
         vector-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-mutex-set!
      (lambda (_%obj31172%_ _%val31173%_)
        (##structure-set!
         _%obj31172%_
         _%val31173%_
         '18
         vector-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rkind-set!
      (lambda (_%obj31169%_ _%val31170%_)
        (##structure-set!
         _%obj31169%_
         _%val31170%_
         '19
         vector-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wkind-set!
      (lambda (_%obj31166%_ _%val31167%_)
        (##structure-set!
         _%obj31166%_
         _%val31167%_
         '20
         vector-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-name-set!
      (lambda (_%obj31163%_ _%val31164%_)
        (##structure-set! _%obj31163%_ _%val31164%_ '21 vector-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wait-set!
      (lambda (_%obj31160%_ _%val31161%_)
        (##structure-set! _%obj31160%_ _%val31161%_ '22 vector-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-close-set!
      (lambda (_%obj31157%_ _%val31158%_)
        (##structure-set!
         _%obj31157%_
         _%val31158%_
         '23
         vector-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-roptions-set!
      (lambda (_%obj31154%_ _%val31155%_)
        (##structure-set!
         _%obj31154%_
         _%val31155%_
         '24
         vector-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rtimeout-set!
      (lambda (_%obj31151%_ _%val31152%_)
        (##structure-set!
         _%obj31151%_
         _%val31152%_
         '25
         vector-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-rtimeout-thunk-set!
      (lambda (_%obj31148%_ _%val31149%_)
        (##structure-set!
         _%obj31148%_
         _%val31149%_
         '26
         vector-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-set-rtimeout-set!
      (lambda (_%obj31145%_ _%val31146%_)
        (##structure-set!
         _%obj31145%_
         _%val31146%_
         '27
         vector-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-woptions-set!
      (lambda (_%obj31142%_ _%val31143%_)
        (##structure-set!
         _%obj31142%_
         _%val31143%_
         '28
         vector-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wtimeout-set!
      (lambda (_%obj31139%_ _%val31140%_)
        (##structure-set!
         _%obj31139%_
         _%val31140%_
         '29
         vector-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-wtimeout-thunk-set!
      (lambda (_%obj31136%_ _%val31137%_)
        (##structure-set!
         _%obj31136%_
         _%val31137%_
         '30
         vector-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-set-wtimeout-set!
      (lambda (_%obj31133%_ _%val31134%_)
        (##structure-set!
         _%obj31133%_
         _%val31134%_
         '31
         vector-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::vector-port-io-exception-handler-set!
      (lambda (_%obj31128%_ _%val31130%_)
        (##structure-set!
         _%obj31128%_
         _%val31130%_
         '32
         vector-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-peer
      (lambda (_%obj31126%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31126%_ '1 string-port::t 'peer))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-fifo
      (lambda (_%obj31124%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31124%_ '2 string-port::t 'fifo))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rcondvar
      (lambda (_%obj31122%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31122%_
           '3
           string-port::t
           'rcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wcondvar
      (lambda (_%obj31120%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31120%_
           '4
           string-port::t
           'wcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-width
      (lambda (_%obj31118%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31118%_ '5 string-port::t 'width))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-capacity
      (lambda (_%obj31116%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31116%_
           '6
           string-port::t
           'capacity))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rbuf
      (lambda (_%obj31114%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31114%_ '7 string-port::t 'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rlo
      (lambda (_%obj31112%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31112%_ '8 string-port::t 'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rhi
      (lambda (_%obj31110%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31110%_ '9 string-port::t 'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rchars
      (lambda (_%obj31108%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31108%_
           '10
           string-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rlines
      (lambda (_%obj31106%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31106%_
           '11
           string-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rcurline
      (lambda (_%obj31104%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31104%_
           '12
           string-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rbuf-fill
      (lambda (_%obj31102%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31102%_
           '13
           string-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-peek-eof?
      (lambda (_%obj31100%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31100%_
           '14
           string-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wbuf
      (lambda (_%obj31098%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31098%_ '15 string-port::t 'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wlo
      (lambda (_%obj31096%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31096%_ '16 string-port::t 'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-whi
      (lambda (_%obj31094%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31094%_ '17 string-port::t 'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wchars
      (lambda (_%obj31092%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31092%_
           '18
           string-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wlines
      (lambda (_%obj31090%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31090%_
           '19
           string-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wcurline
      (lambda (_%obj31088%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31088%_
           '20
           string-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wbuf-drain
      (lambda (_%obj31086%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31086%_
           '21
           string-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-input-readtable
      (lambda (_%obj31084%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31084%_
           '22
           string-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-output-readtable
      (lambda (_%obj31082%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31082%_
           '23
           string-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-output-width
      (lambda (_%obj31080%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31080%_
           '24
           string-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-read-datum
      (lambda (_%obj31078%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31078%_
           '25
           string-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-write-datum
      (lambda (_%obj31076%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31076%_
           '26
           string-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-newline
      (lambda (_%obj31074%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31074%_
           '27
           string-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-force-output
      (lambda (_%obj31072%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31072%_
           '28
           string-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-mutex
      (lambda (_%obj31070%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31070%_ '29 string-port::t 'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rkind
      (lambda (_%obj31068%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31068%_ '30 string-port::t 'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wkind
      (lambda (_%obj31066%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31066%_ '31 string-port::t 'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-name
      (lambda (_%obj31064%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31064%_ '32 string-port::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wait
      (lambda (_%obj31062%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31062%_ '33 string-port::t 'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-close
      (lambda (_%obj31060%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj31060%_ '34 string-port::t 'close))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-roptions
      (lambda (_%obj31058%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31058%_
           '35
           string-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rtimeout
      (lambda (_%obj31056%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31056%_
           '36
           string-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rtimeout-thunk
      (lambda (_%obj31054%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31054%_
           '37
           string-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-set-rtimeout
      (lambda (_%obj31052%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31052%_
           '38
           string-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-woptions
      (lambda (_%obj31050%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31050%_
           '39
           string-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wtimeout
      (lambda (_%obj31048%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31048%_
           '40
           string-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wtimeout-thunk
      (lambda (_%obj31046%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31046%_
           '41
           string-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-set-wtimeout
      (lambda (_%obj31044%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31044%_
           '42
           string-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-io-exception-handler
      (lambda (_%obj31042%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj31042%_
           '43
           string-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-peer-set!
      (lambda (_%obj31039%_ _%val31040%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31039%_
           _%val31040%_
           '1
           string-port::t
           'peer))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-fifo-set!
      (lambda (_%obj31036%_ _%val31037%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31036%_
           _%val31037%_
           '2
           string-port::t
           'fifo))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rcondvar-set!
      (lambda (_%obj31033%_ _%val31034%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31033%_
           _%val31034%_
           '3
           string-port::t
           'rcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wcondvar-set!
      (lambda (_%obj31030%_ _%val31031%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31030%_
           _%val31031%_
           '4
           string-port::t
           'wcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-width-set!
      (lambda (_%obj31027%_ _%val31028%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31027%_
           _%val31028%_
           '5
           string-port::t
           'width))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-capacity-set!
      (lambda (_%obj31024%_ _%val31025%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31024%_
           _%val31025%_
           '6
           string-port::t
           'capacity))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rbuf-set!
      (lambda (_%obj31021%_ _%val31022%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31021%_
           _%val31022%_
           '7
           string-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rlo-set!
      (lambda (_%obj31018%_ _%val31019%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31018%_
           _%val31019%_
           '8
           string-port::t
           'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rhi-set!
      (lambda (_%obj31015%_ _%val31016%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31015%_
           _%val31016%_
           '9
           string-port::t
           'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rchars-set!
      (lambda (_%obj31012%_ _%val31013%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31012%_
           _%val31013%_
           '10
           string-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rlines-set!
      (lambda (_%obj31009%_ _%val31010%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31009%_
           _%val31010%_
           '11
           string-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rcurline-set!
      (lambda (_%obj31006%_ _%val31007%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31006%_
           _%val31007%_
           '12
           string-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rbuf-fill-set!
      (lambda (_%obj31003%_ _%val31004%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31003%_
           _%val31004%_
           '13
           string-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-peek-eof?-set!
      (lambda (_%obj31000%_ _%val31001%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj31000%_
           _%val31001%_
           '14
           string-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wbuf-set!
      (lambda (_%obj30997%_ _%val30998%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30997%_
           _%val30998%_
           '15
           string-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wlo-set!
      (lambda (_%obj30994%_ _%val30995%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30994%_
           _%val30995%_
           '16
           string-port::t
           'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-whi-set!
      (lambda (_%obj30991%_ _%val30992%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30991%_
           _%val30992%_
           '17
           string-port::t
           'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wchars-set!
      (lambda (_%obj30988%_ _%val30989%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30988%_
           _%val30989%_
           '18
           string-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wlines-set!
      (lambda (_%obj30985%_ _%val30986%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30985%_
           _%val30986%_
           '19
           string-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wcurline-set!
      (lambda (_%obj30982%_ _%val30983%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30982%_
           _%val30983%_
           '20
           string-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wbuf-drain-set!
      (lambda (_%obj30979%_ _%val30980%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30979%_
           _%val30980%_
           '21
           string-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-input-readtable-set!
      (lambda (_%obj30976%_ _%val30977%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30976%_
           _%val30977%_
           '22
           string-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-output-readtable-set!
      (lambda (_%obj30973%_ _%val30974%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30973%_
           _%val30974%_
           '23
           string-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-output-width-set!
      (lambda (_%obj30970%_ _%val30971%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30970%_
           _%val30971%_
           '24
           string-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-read-datum-set!
      (lambda (_%obj30967%_ _%val30968%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30967%_
           _%val30968%_
           '25
           string-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-write-datum-set!
      (lambda (_%obj30964%_ _%val30965%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30964%_
           _%val30965%_
           '26
           string-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-newline-set!
      (lambda (_%obj30961%_ _%val30962%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30961%_
           _%val30962%_
           '27
           string-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-force-output-set!
      (lambda (_%obj30958%_ _%val30959%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30958%_
           _%val30959%_
           '28
           string-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-mutex-set!
      (lambda (_%obj30955%_ _%val30956%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30955%_
           _%val30956%_
           '29
           string-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rkind-set!
      (lambda (_%obj30952%_ _%val30953%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30952%_
           _%val30953%_
           '30
           string-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wkind-set!
      (lambda (_%obj30949%_ _%val30950%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30949%_
           _%val30950%_
           '31
           string-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-name-set!
      (lambda (_%obj30946%_ _%val30947%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30946%_
           _%val30947%_
           '32
           string-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wait-set!
      (lambda (_%obj30943%_ _%val30944%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30943%_
           _%val30944%_
           '33
           string-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-close-set!
      (lambda (_%obj30940%_ _%val30941%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30940%_
           _%val30941%_
           '34
           string-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-roptions-set!
      (lambda (_%obj30937%_ _%val30938%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30937%_
           _%val30938%_
           '35
           string-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rtimeout-set!
      (lambda (_%obj30934%_ _%val30935%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30934%_
           _%val30935%_
           '36
           string-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-rtimeout-thunk-set!
      (lambda (_%obj30931%_ _%val30932%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30931%_
           _%val30932%_
           '37
           string-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-set-rtimeout-set!
      (lambda (_%obj30928%_ _%val30929%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30928%_
           _%val30929%_
           '38
           string-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-woptions-set!
      (lambda (_%obj30925%_ _%val30926%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30925%_
           _%val30926%_
           '39
           string-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wtimeout-set!
      (lambda (_%obj30922%_ _%val30923%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30922%_
           _%val30923%_
           '40
           string-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-wtimeout-thunk-set!
      (lambda (_%obj30919%_ _%val30920%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30919%_
           _%val30920%_
           '41
           string-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-set-wtimeout-set!
      (lambda (_%obj30916%_ _%val30917%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30916%_
           _%val30917%_
           '42
           string-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::string-port-io-exception-handler-set!
      (lambda (_%obj30913%_ _%val30914%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30913%_
           _%val30914%_
           '43
           string-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::string-port-peer
      (lambda (_%obj30911%_)
        (##structure-ref _%obj30911%_ '1 string-port::t 'peer)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-fifo
      (lambda (_%obj30909%_)
        (##structure-ref _%obj30909%_ '2 string-port::t 'fifo)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rcondvar
      (lambda (_%obj30907%_)
        (##structure-ref _%obj30907%_ '3 string-port::t 'rcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wcondvar
      (lambda (_%obj30905%_)
        (##structure-ref _%obj30905%_ '4 string-port::t 'wcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-width
      (lambda (_%obj30903%_)
        (##structure-ref _%obj30903%_ '5 string-port::t 'width)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-capacity
      (lambda (_%obj30901%_)
        (##structure-ref _%obj30901%_ '6 string-port::t 'capacity)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rbuf
      (lambda (_%obj30899%_)
        (##structure-ref _%obj30899%_ '7 string-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rlo
      (lambda (_%obj30897%_)
        (##structure-ref _%obj30897%_ '8 string-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rhi
      (lambda (_%obj30895%_)
        (##structure-ref _%obj30895%_ '9 string-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rchars
      (lambda (_%obj30893%_)
        (##structure-ref _%obj30893%_ '10 string-port::t 'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rlines
      (lambda (_%obj30891%_)
        (##structure-ref _%obj30891%_ '11 string-port::t 'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rcurline
      (lambda (_%obj30889%_)
        (##structure-ref _%obj30889%_ '12 string-port::t 'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rbuf-fill
      (lambda (_%obj30887%_)
        (##structure-ref _%obj30887%_ '13 string-port::t 'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-peek-eof?
      (lambda (_%obj30885%_)
        (##structure-ref _%obj30885%_ '14 string-port::t 'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wbuf
      (lambda (_%obj30883%_)
        (##structure-ref _%obj30883%_ '15 string-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wlo
      (lambda (_%obj30881%_)
        (##structure-ref _%obj30881%_ '16 string-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-whi
      (lambda (_%obj30879%_)
        (##structure-ref _%obj30879%_ '17 string-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wchars
      (lambda (_%obj30877%_)
        (##structure-ref _%obj30877%_ '18 string-port::t 'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wlines
      (lambda (_%obj30875%_)
        (##structure-ref _%obj30875%_ '19 string-port::t 'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wcurline
      (lambda (_%obj30873%_)
        (##structure-ref _%obj30873%_ '20 string-port::t 'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wbuf-drain
      (lambda (_%obj30871%_)
        (##structure-ref _%obj30871%_ '21 string-port::t 'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-input-readtable
      (lambda (_%obj30869%_)
        (##structure-ref _%obj30869%_ '22 string-port::t 'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-output-readtable
      (lambda (_%obj30867%_)
        (##structure-ref _%obj30867%_ '23 string-port::t 'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-output-width
      (lambda (_%obj30865%_)
        (##structure-ref _%obj30865%_ '24 string-port::t 'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-read-datum
      (lambda (_%obj30863%_)
        (##structure-ref _%obj30863%_ '25 string-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-write-datum
      (lambda (_%obj30861%_)
        (##structure-ref _%obj30861%_ '26 string-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-newline
      (lambda (_%obj30859%_)
        (##structure-ref _%obj30859%_ '27 string-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-force-output
      (lambda (_%obj30857%_)
        (##structure-ref _%obj30857%_ '28 string-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-mutex
      (lambda (_%obj30855%_)
        (##structure-ref _%obj30855%_ '29 string-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rkind
      (lambda (_%obj30853%_)
        (##structure-ref _%obj30853%_ '30 string-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wkind
      (lambda (_%obj30851%_)
        (##structure-ref _%obj30851%_ '31 string-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-name
      (lambda (_%obj30849%_)
        (##structure-ref _%obj30849%_ '32 string-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wait
      (lambda (_%obj30847%_)
        (##structure-ref _%obj30847%_ '33 string-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-close
      (lambda (_%obj30845%_)
        (##structure-ref _%obj30845%_ '34 string-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-roptions
      (lambda (_%obj30843%_)
        (##structure-ref _%obj30843%_ '35 string-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rtimeout
      (lambda (_%obj30841%_)
        (##structure-ref _%obj30841%_ '36 string-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rtimeout-thunk
      (lambda (_%obj30839%_)
        (##structure-ref _%obj30839%_ '37 string-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-set-rtimeout
      (lambda (_%obj30837%_)
        (##structure-ref _%obj30837%_ '38 string-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-woptions
      (lambda (_%obj30835%_)
        (##structure-ref _%obj30835%_ '39 string-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wtimeout
      (lambda (_%obj30833%_)
        (##structure-ref _%obj30833%_ '40 string-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wtimeout-thunk
      (lambda (_%obj30831%_)
        (##structure-ref _%obj30831%_ '41 string-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-set-wtimeout
      (lambda (_%obj30829%_)
        (##structure-ref _%obj30829%_ '42 string-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-io-exception-handler
      (lambda (_%obj30827%_)
        (##structure-ref
         _%obj30827%_
         '43
         string-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-peer-set!
      (lambda (_%obj30824%_ _%val30825%_)
        (##structure-set! _%obj30824%_ _%val30825%_ '1 string-port::t 'peer)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-fifo-set!
      (lambda (_%obj30821%_ _%val30822%_)
        (##structure-set! _%obj30821%_ _%val30822%_ '2 string-port::t 'fifo)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rcondvar-set!
      (lambda (_%obj30818%_ _%val30819%_)
        (##structure-set!
         _%obj30818%_
         _%val30819%_
         '3
         string-port::t
         'rcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wcondvar-set!
      (lambda (_%obj30815%_ _%val30816%_)
        (##structure-set!
         _%obj30815%_
         _%val30816%_
         '4
         string-port::t
         'wcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-width-set!
      (lambda (_%obj30812%_ _%val30813%_)
        (##structure-set! _%obj30812%_ _%val30813%_ '5 string-port::t 'width)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-capacity-set!
      (lambda (_%obj30809%_ _%val30810%_)
        (##structure-set!
         _%obj30809%_
         _%val30810%_
         '6
         string-port::t
         'capacity)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rbuf-set!
      (lambda (_%obj30806%_ _%val30807%_)
        (##structure-set! _%obj30806%_ _%val30807%_ '7 string-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rlo-set!
      (lambda (_%obj30803%_ _%val30804%_)
        (##structure-set! _%obj30803%_ _%val30804%_ '8 string-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rhi-set!
      (lambda (_%obj30800%_ _%val30801%_)
        (##structure-set! _%obj30800%_ _%val30801%_ '9 string-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rchars-set!
      (lambda (_%obj30797%_ _%val30798%_)
        (##structure-set!
         _%obj30797%_
         _%val30798%_
         '10
         string-port::t
         'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rlines-set!
      (lambda (_%obj30794%_ _%val30795%_)
        (##structure-set!
         _%obj30794%_
         _%val30795%_
         '11
         string-port::t
         'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rcurline-set!
      (lambda (_%obj30791%_ _%val30792%_)
        (##structure-set!
         _%obj30791%_
         _%val30792%_
         '12
         string-port::t
         'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rbuf-fill-set!
      (lambda (_%obj30788%_ _%val30789%_)
        (##structure-set!
         _%obj30788%_
         _%val30789%_
         '13
         string-port::t
         'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-peek-eof?-set!
      (lambda (_%obj30785%_ _%val30786%_)
        (##structure-set!
         _%obj30785%_
         _%val30786%_
         '14
         string-port::t
         'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wbuf-set!
      (lambda (_%obj30782%_ _%val30783%_)
        (##structure-set! _%obj30782%_ _%val30783%_ '15 string-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wlo-set!
      (lambda (_%obj30779%_ _%val30780%_)
        (##structure-set! _%obj30779%_ _%val30780%_ '16 string-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-whi-set!
      (lambda (_%obj30776%_ _%val30777%_)
        (##structure-set! _%obj30776%_ _%val30777%_ '17 string-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wchars-set!
      (lambda (_%obj30773%_ _%val30774%_)
        (##structure-set!
         _%obj30773%_
         _%val30774%_
         '18
         string-port::t
         'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wlines-set!
      (lambda (_%obj30770%_ _%val30771%_)
        (##structure-set!
         _%obj30770%_
         _%val30771%_
         '19
         string-port::t
         'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wcurline-set!
      (lambda (_%obj30767%_ _%val30768%_)
        (##structure-set!
         _%obj30767%_
         _%val30768%_
         '20
         string-port::t
         'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wbuf-drain-set!
      (lambda (_%obj30764%_ _%val30765%_)
        (##structure-set!
         _%obj30764%_
         _%val30765%_
         '21
         string-port::t
         'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-input-readtable-set!
      (lambda (_%obj30761%_ _%val30762%_)
        (##structure-set!
         _%obj30761%_
         _%val30762%_
         '22
         string-port::t
         'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-output-readtable-set!
      (lambda (_%obj30758%_ _%val30759%_)
        (##structure-set!
         _%obj30758%_
         _%val30759%_
         '23
         string-port::t
         'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-output-width-set!
      (lambda (_%obj30755%_ _%val30756%_)
        (##structure-set!
         _%obj30755%_
         _%val30756%_
         '24
         string-port::t
         'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-read-datum-set!
      (lambda (_%obj30752%_ _%val30753%_)
        (##structure-set!
         _%obj30752%_
         _%val30753%_
         '25
         string-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-write-datum-set!
      (lambda (_%obj30749%_ _%val30750%_)
        (##structure-set!
         _%obj30749%_
         _%val30750%_
         '26
         string-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-newline-set!
      (lambda (_%obj30746%_ _%val30747%_)
        (##structure-set!
         _%obj30746%_
         _%val30747%_
         '27
         string-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-force-output-set!
      (lambda (_%obj30743%_ _%val30744%_)
        (##structure-set!
         _%obj30743%_
         _%val30744%_
         '28
         string-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-mutex-set!
      (lambda (_%obj30740%_ _%val30741%_)
        (##structure-set!
         _%obj30740%_
         _%val30741%_
         '29
         string-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rkind-set!
      (lambda (_%obj30737%_ _%val30738%_)
        (##structure-set!
         _%obj30737%_
         _%val30738%_
         '30
         string-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wkind-set!
      (lambda (_%obj30734%_ _%val30735%_)
        (##structure-set!
         _%obj30734%_
         _%val30735%_
         '31
         string-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-name-set!
      (lambda (_%obj30731%_ _%val30732%_)
        (##structure-set! _%obj30731%_ _%val30732%_ '32 string-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wait-set!
      (lambda (_%obj30728%_ _%val30729%_)
        (##structure-set! _%obj30728%_ _%val30729%_ '33 string-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-close-set!
      (lambda (_%obj30725%_ _%val30726%_)
        (##structure-set!
         _%obj30725%_
         _%val30726%_
         '34
         string-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-roptions-set!
      (lambda (_%obj30722%_ _%val30723%_)
        (##structure-set!
         _%obj30722%_
         _%val30723%_
         '35
         string-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rtimeout-set!
      (lambda (_%obj30719%_ _%val30720%_)
        (##structure-set!
         _%obj30719%_
         _%val30720%_
         '36
         string-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-rtimeout-thunk-set!
      (lambda (_%obj30716%_ _%val30717%_)
        (##structure-set!
         _%obj30716%_
         _%val30717%_
         '37
         string-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-set-rtimeout-set!
      (lambda (_%obj30713%_ _%val30714%_)
        (##structure-set!
         _%obj30713%_
         _%val30714%_
         '38
         string-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-woptions-set!
      (lambda (_%obj30710%_ _%val30711%_)
        (##structure-set!
         _%obj30710%_
         _%val30711%_
         '39
         string-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wtimeout-set!
      (lambda (_%obj30707%_ _%val30708%_)
        (##structure-set!
         _%obj30707%_
         _%val30708%_
         '40
         string-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-wtimeout-thunk-set!
      (lambda (_%obj30704%_ _%val30705%_)
        (##structure-set!
         _%obj30704%_
         _%val30705%_
         '41
         string-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-set-wtimeout-set!
      (lambda (_%obj30701%_ _%val30702%_)
        (##structure-set!
         _%obj30701%_
         _%val30702%_
         '42
         string-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::string-port-io-exception-handler-set!
      (lambda (_%obj30696%_ _%val30698%_)
        (##structure-set!
         _%obj30696%_
         _%val30698%_
         '43
         string-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-peer
      (lambda (_%obj30694%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj30694%_ '1 u8vector-port::t 'peer))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-fifo
      (lambda (_%obj30692%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj30692%_ '2 u8vector-port::t 'fifo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rcondvar
      (lambda (_%obj30690%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30690%_
           '3
           u8vector-port::t
           'rcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wcondvar
      (lambda (_%obj30688%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30688%_
           '4
           u8vector-port::t
           'wcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-width
      (lambda (_%obj30686%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30686%_
           '5
           u8vector-port::t
           'width))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-capacity
      (lambda (_%obj30684%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30684%_
           '6
           u8vector-port::t
           'capacity))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rbuf
      (lambda (_%obj30682%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30682%_
           '7
           u8vector-port::t
           'super-rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rlo
      (lambda (_%obj30680%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30680%_
           '8
           u8vector-port::t
           'super-rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rhi
      (lambda (_%obj30678%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30678%_
           '9
           u8vector-port::t
           'super-rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rbuf-fill
      (lambda (_%obj30676%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30676%_
           '10
           u8vector-port::t
           'super-rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-wbuf
      (lambda (_%obj30674%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30674%_
           '11
           u8vector-port::t
           'super-wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-wlo
      (lambda (_%obj30672%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30672%_
           '12
           u8vector-port::t
           'super-wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-whi
      (lambda (_%obj30670%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30670%_
           '13
           u8vector-port::t
           'super-whi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-wbuf-drain
      (lambda (_%obj30668%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30668%_
           '14
           u8vector-port::t
           'super-wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rbuf
      (lambda (_%obj30666%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30666%_
           '15
           u8vector-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rlo
      (lambda (_%obj30664%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj30664%_ '16 u8vector-port::t 'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rhi
      (lambda (_%obj30662%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj30662%_ '17 u8vector-port::t 'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rchars
      (lambda (_%obj30660%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30660%_
           '18
           u8vector-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rlines
      (lambda (_%obj30658%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30658%_
           '19
           u8vector-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rcurline
      (lambda (_%obj30656%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30656%_
           '20
           u8vector-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rbuf-fill
      (lambda (_%obj30654%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30654%_
           '21
           u8vector-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-peek-eof?
      (lambda (_%obj30652%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30652%_
           '22
           u8vector-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wbuf
      (lambda (_%obj30650%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30650%_
           '23
           u8vector-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wlo
      (lambda (_%obj30648%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj30648%_ '24 u8vector-port::t 'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-whi
      (lambda (_%obj30646%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj30646%_ '25 u8vector-port::t 'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wchars
      (lambda (_%obj30644%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30644%_
           '26
           u8vector-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wlines
      (lambda (_%obj30642%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30642%_
           '27
           u8vector-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wcurline
      (lambda (_%obj30640%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30640%_
           '28
           u8vector-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wbuf-drain
      (lambda (_%obj30638%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30638%_
           '29
           u8vector-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-input-readtable
      (lambda (_%obj30636%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30636%_
           '30
           u8vector-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-output-readtable
      (lambda (_%obj30634%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30634%_
           '31
           u8vector-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-output-width
      (lambda (_%obj30632%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30632%_
           '32
           u8vector-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-read-datum
      (lambda (_%obj30630%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30630%_
           '33
           u8vector-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-write-datum
      (lambda (_%obj30628%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30628%_
           '34
           u8vector-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-newline
      (lambda (_%obj30626%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30626%_
           '35
           u8vector-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-force-output
      (lambda (_%obj30624%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30624%_
           '36
           u8vector-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-mutex
      (lambda (_%obj30622%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30622%_
           '37
           u8vector-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rkind
      (lambda (_%obj30620%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30620%_
           '38
           u8vector-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wkind
      (lambda (_%obj30618%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30618%_
           '39
           u8vector-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-name
      (lambda (_%obj30616%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30616%_
           '40
           u8vector-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wait
      (lambda (_%obj30614%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30614%_
           '41
           u8vector-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-close
      (lambda (_%obj30612%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30612%_
           '42
           u8vector-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-roptions
      (lambda (_%obj30610%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30610%_
           '43
           u8vector-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rtimeout
      (lambda (_%obj30608%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30608%_
           '44
           u8vector-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rtimeout-thunk
      (lambda (_%obj30606%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30606%_
           '45
           u8vector-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-set-rtimeout
      (lambda (_%obj30604%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30604%_
           '46
           u8vector-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-woptions
      (lambda (_%obj30602%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30602%_
           '47
           u8vector-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wtimeout
      (lambda (_%obj30600%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30600%_
           '48
           u8vector-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wtimeout-thunk
      (lambda (_%obj30598%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30598%_
           '49
           u8vector-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-set-wtimeout
      (lambda (_%obj30596%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30596%_
           '50
           u8vector-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-io-exception-handler
      (lambda (_%obj30594%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30594%_
           '51
           u8vector-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-peer-set!
      (lambda (_%obj30591%_ _%val30592%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30591%_
           _%val30592%_
           '1
           u8vector-port::t
           'peer))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-fifo-set!
      (lambda (_%obj30588%_ _%val30589%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30588%_
           _%val30589%_
           '2
           u8vector-port::t
           'fifo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rcondvar-set!
      (lambda (_%obj30585%_ _%val30586%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30585%_
           _%val30586%_
           '3
           u8vector-port::t
           'rcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wcondvar-set!
      (lambda (_%obj30582%_ _%val30583%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30582%_
           _%val30583%_
           '4
           u8vector-port::t
           'wcondvar))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-width-set!
      (lambda (_%obj30579%_ _%val30580%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30579%_
           _%val30580%_
           '5
           u8vector-port::t
           'width))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-capacity-set!
      (lambda (_%obj30576%_ _%val30577%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30576%_
           _%val30577%_
           '6
           u8vector-port::t
           'capacity))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rbuf-set!
      (lambda (_%obj30573%_ _%val30574%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30573%_
           _%val30574%_
           '7
           u8vector-port::t
           'super-rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rlo-set!
      (lambda (_%obj30570%_ _%val30571%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30570%_
           _%val30571%_
           '8
           u8vector-port::t
           'super-rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rhi-set!
      (lambda (_%obj30567%_ _%val30568%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30567%_
           _%val30568%_
           '9
           u8vector-port::t
           'super-rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-rbuf-fill-set!
      (lambda (_%obj30564%_ _%val30565%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30564%_
           _%val30565%_
           '10
           u8vector-port::t
           'super-rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-wbuf-set!
      (lambda (_%obj30561%_ _%val30562%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30561%_
           _%val30562%_
           '11
           u8vector-port::t
           'super-wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-wlo-set!
      (lambda (_%obj30558%_ _%val30559%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30558%_
           _%val30559%_
           '12
           u8vector-port::t
           'super-wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-whi-set!
      (lambda (_%obj30555%_ _%val30556%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30555%_
           _%val30556%_
           '13
           u8vector-port::t
           'super-whi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-super-wbuf-drain-set!
      (lambda (_%obj30552%_ _%val30553%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30552%_
           _%val30553%_
           '14
           u8vector-port::t
           'super-wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rbuf-set!
      (lambda (_%obj30549%_ _%val30550%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30549%_
           _%val30550%_
           '15
           u8vector-port::t
           'rbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rlo-set!
      (lambda (_%obj30546%_ _%val30547%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30546%_
           _%val30547%_
           '16
           u8vector-port::t
           'rlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rhi-set!
      (lambda (_%obj30543%_ _%val30544%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30543%_
           _%val30544%_
           '17
           u8vector-port::t
           'rhi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rchars-set!
      (lambda (_%obj30540%_ _%val30541%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30540%_
           _%val30541%_
           '18
           u8vector-port::t
           'rchars))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rlines-set!
      (lambda (_%obj30537%_ _%val30538%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30537%_
           _%val30538%_
           '19
           u8vector-port::t
           'rlines))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rcurline-set!
      (lambda (_%obj30534%_ _%val30535%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30534%_
           _%val30535%_
           '20
           u8vector-port::t
           'rcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rbuf-fill-set!
      (lambda (_%obj30531%_ _%val30532%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30531%_
           _%val30532%_
           '21
           u8vector-port::t
           'rbuf-fill))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-peek-eof?-set!
      (lambda (_%obj30528%_ _%val30529%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30528%_
           _%val30529%_
           '22
           u8vector-port::t
           'peek-eof?))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wbuf-set!
      (lambda (_%obj30525%_ _%val30526%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30525%_
           _%val30526%_
           '23
           u8vector-port::t
           'wbuf))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wlo-set!
      (lambda (_%obj30522%_ _%val30523%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30522%_
           _%val30523%_
           '24
           u8vector-port::t
           'wlo))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-whi-set!
      (lambda (_%obj30519%_ _%val30520%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30519%_
           _%val30520%_
           '25
           u8vector-port::t
           'whi))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wchars-set!
      (lambda (_%obj30516%_ _%val30517%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30516%_
           _%val30517%_
           '26
           u8vector-port::t
           'wchars))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wlines-set!
      (lambda (_%obj30513%_ _%val30514%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30513%_
           _%val30514%_
           '27
           u8vector-port::t
           'wlines))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wcurline-set!
      (lambda (_%obj30510%_ _%val30511%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30510%_
           _%val30511%_
           '28
           u8vector-port::t
           'wcurline))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wbuf-drain-set!
      (lambda (_%obj30507%_ _%val30508%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30507%_
           _%val30508%_
           '29
           u8vector-port::t
           'wbuf-drain))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-input-readtable-set!
      (lambda (_%obj30504%_ _%val30505%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30504%_
           _%val30505%_
           '30
           u8vector-port::t
           'input-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-output-readtable-set!
      (lambda (_%obj30501%_ _%val30502%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30501%_
           _%val30502%_
           '31
           u8vector-port::t
           'output-readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-output-width-set!
      (lambda (_%obj30498%_ _%val30499%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30498%_
           _%val30499%_
           '32
           u8vector-port::t
           'output-width))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-read-datum-set!
      (lambda (_%obj30495%_ _%val30496%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30495%_
           _%val30496%_
           '33
           u8vector-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-write-datum-set!
      (lambda (_%obj30492%_ _%val30493%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30492%_
           _%val30493%_
           '34
           u8vector-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-newline-set!
      (lambda (_%obj30489%_ _%val30490%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30489%_
           _%val30490%_
           '35
           u8vector-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-force-output-set!
      (lambda (_%obj30486%_ _%val30487%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30486%_
           _%val30487%_
           '36
           u8vector-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-mutex-set!
      (lambda (_%obj30483%_ _%val30484%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30483%_
           _%val30484%_
           '37
           u8vector-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rkind-set!
      (lambda (_%obj30480%_ _%val30481%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30480%_
           _%val30481%_
           '38
           u8vector-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wkind-set!
      (lambda (_%obj30477%_ _%val30478%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30477%_
           _%val30478%_
           '39
           u8vector-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-name-set!
      (lambda (_%obj30474%_ _%val30475%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30474%_
           _%val30475%_
           '40
           u8vector-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wait-set!
      (lambda (_%obj30471%_ _%val30472%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30471%_
           _%val30472%_
           '41
           u8vector-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-close-set!
      (lambda (_%obj30468%_ _%val30469%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30468%_
           _%val30469%_
           '42
           u8vector-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-roptions-set!
      (lambda (_%obj30465%_ _%val30466%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30465%_
           _%val30466%_
           '43
           u8vector-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rtimeout-set!
      (lambda (_%obj30462%_ _%val30463%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30462%_
           _%val30463%_
           '44
           u8vector-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-rtimeout-thunk-set!
      (lambda (_%obj30459%_ _%val30460%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30459%_
           _%val30460%_
           '45
           u8vector-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-set-rtimeout-set!
      (lambda (_%obj30456%_ _%val30457%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30456%_
           _%val30457%_
           '46
           u8vector-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-woptions-set!
      (lambda (_%obj30453%_ _%val30454%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30453%_
           _%val30454%_
           '47
           u8vector-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wtimeout-set!
      (lambda (_%obj30450%_ _%val30451%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30450%_
           _%val30451%_
           '48
           u8vector-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-wtimeout-thunk-set!
      (lambda (_%obj30447%_ _%val30448%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30447%_
           _%val30448%_
           '49
           u8vector-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-set-wtimeout-set!
      (lambda (_%obj30444%_ _%val30445%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30444%_
           _%val30445%_
           '50
           u8vector-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::u8vector-port-io-exception-handler-set!
      (lambda (_%obj30441%_ _%val30442%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30441%_
           _%val30442%_
           '51
           u8vector-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-peer
      (lambda (_%obj30439%_)
        (##structure-ref _%obj30439%_ '1 u8vector-port::t 'peer)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-fifo
      (lambda (_%obj30437%_)
        (##structure-ref _%obj30437%_ '2 u8vector-port::t 'fifo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rcondvar
      (lambda (_%obj30435%_)
        (##structure-ref _%obj30435%_ '3 u8vector-port::t 'rcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wcondvar
      (lambda (_%obj30433%_)
        (##structure-ref _%obj30433%_ '4 u8vector-port::t 'wcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-width
      (lambda (_%obj30431%_)
        (##structure-ref _%obj30431%_ '5 u8vector-port::t 'width)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-capacity
      (lambda (_%obj30429%_)
        (##structure-ref _%obj30429%_ '6 u8vector-port::t 'capacity)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rbuf
      (lambda (_%obj30427%_)
        (##structure-ref _%obj30427%_ '7 u8vector-port::t 'super-rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rlo
      (lambda (_%obj30425%_)
        (##structure-ref _%obj30425%_ '8 u8vector-port::t 'super-rlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rhi
      (lambda (_%obj30423%_)
        (##structure-ref _%obj30423%_ '9 u8vector-port::t 'super-rhi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rbuf-fill
      (lambda (_%obj30421%_)
        (##structure-ref _%obj30421%_ '10 u8vector-port::t 'super-rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-wbuf
      (lambda (_%obj30419%_)
        (##structure-ref _%obj30419%_ '11 u8vector-port::t 'super-wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-wlo
      (lambda (_%obj30417%_)
        (##structure-ref _%obj30417%_ '12 u8vector-port::t 'super-wlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-whi
      (lambda (_%obj30415%_)
        (##structure-ref _%obj30415%_ '13 u8vector-port::t 'super-whi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-wbuf-drain
      (lambda (_%obj30413%_)
        (##structure-ref _%obj30413%_ '14 u8vector-port::t 'super-wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rbuf
      (lambda (_%obj30411%_)
        (##structure-ref _%obj30411%_ '15 u8vector-port::t 'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rlo
      (lambda (_%obj30409%_)
        (##structure-ref _%obj30409%_ '16 u8vector-port::t 'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rhi
      (lambda (_%obj30407%_)
        (##structure-ref _%obj30407%_ '17 u8vector-port::t 'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rchars
      (lambda (_%obj30405%_)
        (##structure-ref _%obj30405%_ '18 u8vector-port::t 'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rlines
      (lambda (_%obj30403%_)
        (##structure-ref _%obj30403%_ '19 u8vector-port::t 'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rcurline
      (lambda (_%obj30401%_)
        (##structure-ref _%obj30401%_ '20 u8vector-port::t 'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rbuf-fill
      (lambda (_%obj30399%_)
        (##structure-ref _%obj30399%_ '21 u8vector-port::t 'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-peek-eof?
      (lambda (_%obj30397%_)
        (##structure-ref _%obj30397%_ '22 u8vector-port::t 'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wbuf
      (lambda (_%obj30395%_)
        (##structure-ref _%obj30395%_ '23 u8vector-port::t 'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wlo
      (lambda (_%obj30393%_)
        (##structure-ref _%obj30393%_ '24 u8vector-port::t 'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-whi
      (lambda (_%obj30391%_)
        (##structure-ref _%obj30391%_ '25 u8vector-port::t 'whi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wchars
      (lambda (_%obj30389%_)
        (##structure-ref _%obj30389%_ '26 u8vector-port::t 'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wlines
      (lambda (_%obj30387%_)
        (##structure-ref _%obj30387%_ '27 u8vector-port::t 'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wcurline
      (lambda (_%obj30385%_)
        (##structure-ref _%obj30385%_ '28 u8vector-port::t 'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wbuf-drain
      (lambda (_%obj30383%_)
        (##structure-ref _%obj30383%_ '29 u8vector-port::t 'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-input-readtable
      (lambda (_%obj30381%_)
        (##structure-ref _%obj30381%_ '30 u8vector-port::t 'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-output-readtable
      (lambda (_%obj30379%_)
        (##structure-ref _%obj30379%_ '31 u8vector-port::t 'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-output-width
      (lambda (_%obj30377%_)
        (##structure-ref _%obj30377%_ '32 u8vector-port::t 'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-read-datum
      (lambda (_%obj30375%_)
        (##structure-ref _%obj30375%_ '33 u8vector-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-write-datum
      (lambda (_%obj30373%_)
        (##structure-ref _%obj30373%_ '34 u8vector-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-newline
      (lambda (_%obj30371%_)
        (##structure-ref _%obj30371%_ '35 u8vector-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-force-output
      (lambda (_%obj30369%_)
        (##structure-ref _%obj30369%_ '36 u8vector-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-mutex
      (lambda (_%obj30367%_)
        (##structure-ref _%obj30367%_ '37 u8vector-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rkind
      (lambda (_%obj30365%_)
        (##structure-ref _%obj30365%_ '38 u8vector-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wkind
      (lambda (_%obj30363%_)
        (##structure-ref _%obj30363%_ '39 u8vector-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-name
      (lambda (_%obj30361%_)
        (##structure-ref _%obj30361%_ '40 u8vector-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wait
      (lambda (_%obj30359%_)
        (##structure-ref _%obj30359%_ '41 u8vector-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-close
      (lambda (_%obj30357%_)
        (##structure-ref _%obj30357%_ '42 u8vector-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-roptions
      (lambda (_%obj30355%_)
        (##structure-ref _%obj30355%_ '43 u8vector-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rtimeout
      (lambda (_%obj30353%_)
        (##structure-ref _%obj30353%_ '44 u8vector-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rtimeout-thunk
      (lambda (_%obj30351%_)
        (##structure-ref _%obj30351%_ '45 u8vector-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-set-rtimeout
      (lambda (_%obj30349%_)
        (##structure-ref _%obj30349%_ '46 u8vector-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-woptions
      (lambda (_%obj30347%_)
        (##structure-ref _%obj30347%_ '47 u8vector-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wtimeout
      (lambda (_%obj30345%_)
        (##structure-ref _%obj30345%_ '48 u8vector-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wtimeout-thunk
      (lambda (_%obj30343%_)
        (##structure-ref _%obj30343%_ '49 u8vector-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-set-wtimeout
      (lambda (_%obj30341%_)
        (##structure-ref _%obj30341%_ '50 u8vector-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-io-exception-handler
      (lambda (_%obj30339%_)
        (##structure-ref
         _%obj30339%_
         '51
         u8vector-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-peer-set!
      (lambda (_%obj30336%_ _%val30337%_)
        (##structure-set!
         _%obj30336%_
         _%val30337%_
         '1
         u8vector-port::t
         'peer)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-fifo-set!
      (lambda (_%obj30333%_ _%val30334%_)
        (##structure-set!
         _%obj30333%_
         _%val30334%_
         '2
         u8vector-port::t
         'fifo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rcondvar-set!
      (lambda (_%obj30330%_ _%val30331%_)
        (##structure-set!
         _%obj30330%_
         _%val30331%_
         '3
         u8vector-port::t
         'rcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wcondvar-set!
      (lambda (_%obj30327%_ _%val30328%_)
        (##structure-set!
         _%obj30327%_
         _%val30328%_
         '4
         u8vector-port::t
         'wcondvar)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-width-set!
      (lambda (_%obj30324%_ _%val30325%_)
        (##structure-set!
         _%obj30324%_
         _%val30325%_
         '5
         u8vector-port::t
         'width)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-capacity-set!
      (lambda (_%obj30321%_ _%val30322%_)
        (##structure-set!
         _%obj30321%_
         _%val30322%_
         '6
         u8vector-port::t
         'capacity)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rbuf-set!
      (lambda (_%obj30318%_ _%val30319%_)
        (##structure-set!
         _%obj30318%_
         _%val30319%_
         '7
         u8vector-port::t
         'super-rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rlo-set!
      (lambda (_%obj30315%_ _%val30316%_)
        (##structure-set!
         _%obj30315%_
         _%val30316%_
         '8
         u8vector-port::t
         'super-rlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rhi-set!
      (lambda (_%obj30312%_ _%val30313%_)
        (##structure-set!
         _%obj30312%_
         _%val30313%_
         '9
         u8vector-port::t
         'super-rhi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-rbuf-fill-set!
      (lambda (_%obj30309%_ _%val30310%_)
        (##structure-set!
         _%obj30309%_
         _%val30310%_
         '10
         u8vector-port::t
         'super-rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-wbuf-set!
      (lambda (_%obj30306%_ _%val30307%_)
        (##structure-set!
         _%obj30306%_
         _%val30307%_
         '11
         u8vector-port::t
         'super-wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-wlo-set!
      (lambda (_%obj30303%_ _%val30304%_)
        (##structure-set!
         _%obj30303%_
         _%val30304%_
         '12
         u8vector-port::t
         'super-wlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-whi-set!
      (lambda (_%obj30300%_ _%val30301%_)
        (##structure-set!
         _%obj30300%_
         _%val30301%_
         '13
         u8vector-port::t
         'super-whi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-super-wbuf-drain-set!
      (lambda (_%obj30297%_ _%val30298%_)
        (##structure-set!
         _%obj30297%_
         _%val30298%_
         '14
         u8vector-port::t
         'super-wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rbuf-set!
      (lambda (_%obj30294%_ _%val30295%_)
        (##structure-set!
         _%obj30294%_
         _%val30295%_
         '15
         u8vector-port::t
         'rbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rlo-set!
      (lambda (_%obj30291%_ _%val30292%_)
        (##structure-set!
         _%obj30291%_
         _%val30292%_
         '16
         u8vector-port::t
         'rlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rhi-set!
      (lambda (_%obj30288%_ _%val30289%_)
        (##structure-set!
         _%obj30288%_
         _%val30289%_
         '17
         u8vector-port::t
         'rhi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rchars-set!
      (lambda (_%obj30285%_ _%val30286%_)
        (##structure-set!
         _%obj30285%_
         _%val30286%_
         '18
         u8vector-port::t
         'rchars)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rlines-set!
      (lambda (_%obj30282%_ _%val30283%_)
        (##structure-set!
         _%obj30282%_
         _%val30283%_
         '19
         u8vector-port::t
         'rlines)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rcurline-set!
      (lambda (_%obj30279%_ _%val30280%_)
        (##structure-set!
         _%obj30279%_
         _%val30280%_
         '20
         u8vector-port::t
         'rcurline)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rbuf-fill-set!
      (lambda (_%obj30276%_ _%val30277%_)
        (##structure-set!
         _%obj30276%_
         _%val30277%_
         '21
         u8vector-port::t
         'rbuf-fill)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-peek-eof?-set!
      (lambda (_%obj30273%_ _%val30274%_)
        (##structure-set!
         _%obj30273%_
         _%val30274%_
         '22
         u8vector-port::t
         'peek-eof?)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wbuf-set!
      (lambda (_%obj30270%_ _%val30271%_)
        (##structure-set!
         _%obj30270%_
         _%val30271%_
         '23
         u8vector-port::t
         'wbuf)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wlo-set!
      (lambda (_%obj30267%_ _%val30268%_)
        (##structure-set!
         _%obj30267%_
         _%val30268%_
         '24
         u8vector-port::t
         'wlo)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-whi-set!
      (lambda (_%obj30264%_ _%val30265%_)
        (##structure-set!
         _%obj30264%_
         _%val30265%_
         '25
         u8vector-port::t
         'whi)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wchars-set!
      (lambda (_%obj30261%_ _%val30262%_)
        (##structure-set!
         _%obj30261%_
         _%val30262%_
         '26
         u8vector-port::t
         'wchars)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wlines-set!
      (lambda (_%obj30258%_ _%val30259%_)
        (##structure-set!
         _%obj30258%_
         _%val30259%_
         '27
         u8vector-port::t
         'wlines)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wcurline-set!
      (lambda (_%obj30255%_ _%val30256%_)
        (##structure-set!
         _%obj30255%_
         _%val30256%_
         '28
         u8vector-port::t
         'wcurline)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wbuf-drain-set!
      (lambda (_%obj30252%_ _%val30253%_)
        (##structure-set!
         _%obj30252%_
         _%val30253%_
         '29
         u8vector-port::t
         'wbuf-drain)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-input-readtable-set!
      (lambda (_%obj30249%_ _%val30250%_)
        (##structure-set!
         _%obj30249%_
         _%val30250%_
         '30
         u8vector-port::t
         'input-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-output-readtable-set!
      (lambda (_%obj30246%_ _%val30247%_)
        (##structure-set!
         _%obj30246%_
         _%val30247%_
         '31
         u8vector-port::t
         'output-readtable)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-output-width-set!
      (lambda (_%obj30243%_ _%val30244%_)
        (##structure-set!
         _%obj30243%_
         _%val30244%_
         '32
         u8vector-port::t
         'output-width)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-read-datum-set!
      (lambda (_%obj30240%_ _%val30241%_)
        (##structure-set!
         _%obj30240%_
         _%val30241%_
         '33
         u8vector-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-write-datum-set!
      (lambda (_%obj30237%_ _%val30238%_)
        (##structure-set!
         _%obj30237%_
         _%val30238%_
         '34
         u8vector-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-newline-set!
      (lambda (_%obj30234%_ _%val30235%_)
        (##structure-set!
         _%obj30234%_
         _%val30235%_
         '35
         u8vector-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-force-output-set!
      (lambda (_%obj30231%_ _%val30232%_)
        (##structure-set!
         _%obj30231%_
         _%val30232%_
         '36
         u8vector-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-mutex-set!
      (lambda (_%obj30228%_ _%val30229%_)
        (##structure-set!
         _%obj30228%_
         _%val30229%_
         '37
         u8vector-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rkind-set!
      (lambda (_%obj30225%_ _%val30226%_)
        (##structure-set!
         _%obj30225%_
         _%val30226%_
         '38
         u8vector-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wkind-set!
      (lambda (_%obj30222%_ _%val30223%_)
        (##structure-set!
         _%obj30222%_
         _%val30223%_
         '39
         u8vector-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-name-set!
      (lambda (_%obj30219%_ _%val30220%_)
        (##structure-set!
         _%obj30219%_
         _%val30220%_
         '40
         u8vector-port::t
         'name)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wait-set!
      (lambda (_%obj30216%_ _%val30217%_)
        (##structure-set!
         _%obj30216%_
         _%val30217%_
         '41
         u8vector-port::t
         'wait)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-close-set!
      (lambda (_%obj30213%_ _%val30214%_)
        (##structure-set!
         _%obj30213%_
         _%val30214%_
         '42
         u8vector-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-roptions-set!
      (lambda (_%obj30210%_ _%val30211%_)
        (##structure-set!
         _%obj30210%_
         _%val30211%_
         '43
         u8vector-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rtimeout-set!
      (lambda (_%obj30207%_ _%val30208%_)
        (##structure-set!
         _%obj30207%_
         _%val30208%_
         '44
         u8vector-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-rtimeout-thunk-set!
      (lambda (_%obj30204%_ _%val30205%_)
        (##structure-set!
         _%obj30204%_
         _%val30205%_
         '45
         u8vector-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-set-rtimeout-set!
      (lambda (_%obj30201%_ _%val30202%_)
        (##structure-set!
         _%obj30201%_
         _%val30202%_
         '46
         u8vector-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-woptions-set!
      (lambda (_%obj30198%_ _%val30199%_)
        (##structure-set!
         _%obj30198%_
         _%val30199%_
         '47
         u8vector-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wtimeout-set!
      (lambda (_%obj30195%_ _%val30196%_)
        (##structure-set!
         _%obj30195%_
         _%val30196%_
         '48
         u8vector-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-wtimeout-thunk-set!
      (lambda (_%obj30192%_ _%val30193%_)
        (##structure-set!
         _%obj30192%_
         _%val30193%_
         '49
         u8vector-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-set-wtimeout-set!
      (lambda (_%obj30189%_ _%val30190%_)
        (##structure-set!
         _%obj30189%_
         _%val30190%_
         '50
         u8vector-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::u8vector-port-io-exception-handler-set!
      (lambda (_%obj30184%_ _%val30186%_)
        (##structure-set!
         _%obj30184%_
         _%val30186%_
         '51
         u8vector-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rdevice-condvar
      (lambda (_%obj30182%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30182%_
           '1
           raw-device-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wdevice-condvar
      (lambda (_%obj30180%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30180%_
           '2
           raw-device-port::t
           'wdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-type
      (lambda (_%obj30178%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30178%_
           '3
           raw-device-port::t
           'type))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-id
      (lambda (_%obj30176%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj30176%_ '4 raw-device-port::t 'id))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-specific
      (lambda (_%obj30174%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30174%_
           '5
           raw-device-port::t
           'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-mutex
      (lambda (_%obj30172%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30172%_
           '6
           raw-device-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rkind
      (lambda (_%obj30170%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30170%_
           '7
           raw-device-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wkind
      (lambda (_%obj30168%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30168%_
           '8
           raw-device-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-name
      (lambda (_%obj30166%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30166%_
           '9
           raw-device-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wait
      (lambda (_%obj30164%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30164%_
           '10
           raw-device-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-close
      (lambda (_%obj30162%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30162%_
           '11
           raw-device-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-roptions
      (lambda (_%obj30160%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30160%_
           '12
           raw-device-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rtimeout
      (lambda (_%obj30158%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30158%_
           '13
           raw-device-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rtimeout-thunk
      (lambda (_%obj30156%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30156%_
           '14
           raw-device-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-set-rtimeout
      (lambda (_%obj30154%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30154%_
           '15
           raw-device-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-woptions
      (lambda (_%obj30152%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30152%_
           '16
           raw-device-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wtimeout
      (lambda (_%obj30150%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30150%_
           '17
           raw-device-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wtimeout-thunk
      (lambda (_%obj30148%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30148%_
           '18
           raw-device-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-set-wtimeout
      (lambda (_%obj30146%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30146%_
           '19
           raw-device-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-io-exception-handler
      (lambda (_%obj30144%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj30144%_
           '20
           raw-device-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rdevice-condvar-set!
      (lambda (_%obj30141%_ _%val30142%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30141%_
           _%val30142%_
           '1
           raw-device-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wdevice-condvar-set!
      (lambda (_%obj30138%_ _%val30139%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30138%_
           _%val30139%_
           '2
           raw-device-port::t
           'wdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-type-set!
      (lambda (_%obj30135%_ _%val30136%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30135%_
           _%val30136%_
           '3
           raw-device-port::t
           'type))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-id-set!
      (lambda (_%obj30132%_ _%val30133%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30132%_
           _%val30133%_
           '4
           raw-device-port::t
           'id))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-specific-set!
      (lambda (_%obj30129%_ _%val30130%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30129%_
           _%val30130%_
           '5
           raw-device-port::t
           'specific))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-mutex-set!
      (lambda (_%obj30126%_ _%val30127%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30126%_
           _%val30127%_
           '6
           raw-device-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rkind-set!
      (lambda (_%obj30123%_ _%val30124%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30123%_
           _%val30124%_
           '7
           raw-device-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wkind-set!
      (lambda (_%obj30120%_ _%val30121%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30120%_
           _%val30121%_
           '8
           raw-device-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-name-set!
      (lambda (_%obj30117%_ _%val30118%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30117%_
           _%val30118%_
           '9
           raw-device-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wait-set!
      (lambda (_%obj30114%_ _%val30115%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30114%_
           _%val30115%_
           '10
           raw-device-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-close-set!
      (lambda (_%obj30111%_ _%val30112%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30111%_
           _%val30112%_
           '11
           raw-device-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-roptions-set!
      (lambda (_%obj30108%_ _%val30109%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30108%_
           _%val30109%_
           '12
           raw-device-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rtimeout-set!
      (lambda (_%obj30105%_ _%val30106%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30105%_
           _%val30106%_
           '13
           raw-device-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-rtimeout-thunk-set!
      (lambda (_%obj30102%_ _%val30103%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30102%_
           _%val30103%_
           '14
           raw-device-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-set-rtimeout-set!
      (lambda (_%obj30099%_ _%val30100%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30099%_
           _%val30100%_
           '15
           raw-device-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-woptions-set!
      (lambda (_%obj30096%_ _%val30097%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30096%_
           _%val30097%_
           '16
           raw-device-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wtimeout-set!
      (lambda (_%obj30093%_ _%val30094%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30093%_
           _%val30094%_
           '17
           raw-device-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-wtimeout-thunk-set!
      (lambda (_%obj30090%_ _%val30091%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30090%_
           _%val30091%_
           '18
           raw-device-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-set-wtimeout-set!
      (lambda (_%obj30087%_ _%val30088%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30087%_
           _%val30088%_
           '19
           raw-device-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::raw-device-port-io-exception-handler-set!
      (lambda (_%obj30084%_ _%val30085%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj30084%_
           _%val30085%_
           '20
           raw-device-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rdevice-condvar
      (lambda (_%obj30082%_)
        (##structure-ref _%obj30082%_ '1 raw-device-port::t 'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wdevice-condvar
      (lambda (_%obj30080%_)
        (##structure-ref _%obj30080%_ '2 raw-device-port::t 'wdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-type
      (lambda (_%obj30078%_)
        (##structure-ref _%obj30078%_ '3 raw-device-port::t 'type)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-id
      (lambda (_%obj30076%_)
        (##structure-ref _%obj30076%_ '4 raw-device-port::t 'id)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-specific
      (lambda (_%obj30074%_)
        (##structure-ref _%obj30074%_ '5 raw-device-port::t 'specific)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-mutex
      (lambda (_%obj30072%_)
        (##structure-ref _%obj30072%_ '6 raw-device-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rkind
      (lambda (_%obj30070%_)
        (##structure-ref _%obj30070%_ '7 raw-device-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wkind
      (lambda (_%obj30068%_)
        (##structure-ref _%obj30068%_ '8 raw-device-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-name
      (lambda (_%obj30066%_)
        (##structure-ref _%obj30066%_ '9 raw-device-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wait
      (lambda (_%obj30064%_)
        (##structure-ref _%obj30064%_ '10 raw-device-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-close
      (lambda (_%obj30062%_)
        (##structure-ref _%obj30062%_ '11 raw-device-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-roptions
      (lambda (_%obj30060%_)
        (##structure-ref _%obj30060%_ '12 raw-device-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rtimeout
      (lambda (_%obj30058%_)
        (##structure-ref _%obj30058%_ '13 raw-device-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rtimeout-thunk
      (lambda (_%obj30056%_)
        (##structure-ref _%obj30056%_ '14 raw-device-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-set-rtimeout
      (lambda (_%obj30054%_)
        (##structure-ref _%obj30054%_ '15 raw-device-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-woptions
      (lambda (_%obj30052%_)
        (##structure-ref _%obj30052%_ '16 raw-device-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wtimeout
      (lambda (_%obj30050%_)
        (##structure-ref _%obj30050%_ '17 raw-device-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wtimeout-thunk
      (lambda (_%obj30048%_)
        (##structure-ref _%obj30048%_ '18 raw-device-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-set-wtimeout
      (lambda (_%obj30046%_)
        (##structure-ref _%obj30046%_ '19 raw-device-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-io-exception-handler
      (lambda (_%obj30044%_)
        (##structure-ref
         _%obj30044%_
         '20
         raw-device-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rdevice-condvar-set!
      (lambda (_%obj30041%_ _%val30042%_)
        (##structure-set!
         _%obj30041%_
         _%val30042%_
         '1
         raw-device-port::t
         'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wdevice-condvar-set!
      (lambda (_%obj30038%_ _%val30039%_)
        (##structure-set!
         _%obj30038%_
         _%val30039%_
         '2
         raw-device-port::t
         'wdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-type-set!
      (lambda (_%obj30035%_ _%val30036%_)
        (##structure-set!
         _%obj30035%_
         _%val30036%_
         '3
         raw-device-port::t
         'type)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-id-set!
      (lambda (_%obj30032%_ _%val30033%_)
        (##structure-set!
         _%obj30032%_
         _%val30033%_
         '4
         raw-device-port::t
         'id)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-specific-set!
      (lambda (_%obj30029%_ _%val30030%_)
        (##structure-set!
         _%obj30029%_
         _%val30030%_
         '5
         raw-device-port::t
         'specific)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-mutex-set!
      (lambda (_%obj30026%_ _%val30027%_)
        (##structure-set!
         _%obj30026%_
         _%val30027%_
         '6
         raw-device-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rkind-set!
      (lambda (_%obj30023%_ _%val30024%_)
        (##structure-set!
         _%obj30023%_
         _%val30024%_
         '7
         raw-device-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wkind-set!
      (lambda (_%obj30020%_ _%val30021%_)
        (##structure-set!
         _%obj30020%_
         _%val30021%_
         '8
         raw-device-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-name-set!
      (lambda (_%obj30017%_ _%val30018%_)
        (##structure-set!
         _%obj30017%_
         _%val30018%_
         '9
         raw-device-port::t
         'name)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wait-set!
      (lambda (_%obj30014%_ _%val30015%_)
        (##structure-set!
         _%obj30014%_
         _%val30015%_
         '10
         raw-device-port::t
         'wait)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-close-set!
      (lambda (_%obj30011%_ _%val30012%_)
        (##structure-set!
         _%obj30011%_
         _%val30012%_
         '11
         raw-device-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-roptions-set!
      (lambda (_%obj30008%_ _%val30009%_)
        (##structure-set!
         _%obj30008%_
         _%val30009%_
         '12
         raw-device-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rtimeout-set!
      (lambda (_%obj30005%_ _%val30006%_)
        (##structure-set!
         _%obj30005%_
         _%val30006%_
         '13
         raw-device-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-rtimeout-thunk-set!
      (lambda (_%obj30002%_ _%val30003%_)
        (##structure-set!
         _%obj30002%_
         _%val30003%_
         '14
         raw-device-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-set-rtimeout-set!
      (lambda (_%obj29999%_ _%val30000%_)
        (##structure-set!
         _%obj29999%_
         _%val30000%_
         '15
         raw-device-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-woptions-set!
      (lambda (_%obj29996%_ _%val29997%_)
        (##structure-set!
         _%obj29996%_
         _%val29997%_
         '16
         raw-device-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wtimeout-set!
      (lambda (_%obj29993%_ _%val29994%_)
        (##structure-set!
         _%obj29993%_
         _%val29994%_
         '17
         raw-device-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-wtimeout-thunk-set!
      (lambda (_%obj29990%_ _%val29991%_)
        (##structure-set!
         _%obj29990%_
         _%val29991%_
         '18
         raw-device-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-set-wtimeout-set!
      (lambda (_%obj29987%_ _%val29988%_)
        (##structure-set!
         _%obj29987%_
         _%val29988%_
         '19
         raw-device-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::raw-device-port-io-exception-handler-set!
      (lambda (_%obj29982%_ _%val29984%_)
        (##structure-set!
         _%obj29982%_
         _%val29984%_
         '20
         raw-device-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rdevice-condvar
      (lambda (_%obj29980%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29980%_
           '1
           tcp-server-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-client-psettings
      (lambda (_%obj29978%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29978%_
           '2
           tcp-server-port::t
           'client-psettings))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-read-datum
      (lambda (_%obj29976%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29976%_
           '3
           tcp-server-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-write-datum
      (lambda (_%obj29974%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29974%_
           '4
           tcp-server-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-newline
      (lambda (_%obj29972%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29972%_
           '5
           tcp-server-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-force-output
      (lambda (_%obj29970%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29970%_
           '6
           tcp-server-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-mutex
      (lambda (_%obj29968%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29968%_
           '7
           tcp-server-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rkind
      (lambda (_%obj29966%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29966%_
           '8
           tcp-server-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wkind
      (lambda (_%obj29964%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29964%_
           '9
           tcp-server-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-name
      (lambda (_%obj29962%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29962%_
           '10
           tcp-server-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wait
      (lambda (_%obj29960%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29960%_
           '11
           tcp-server-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-close
      (lambda (_%obj29958%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29958%_
           '12
           tcp-server-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-roptions
      (lambda (_%obj29956%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29956%_
           '13
           tcp-server-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rtimeout
      (lambda (_%obj29954%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29954%_
           '14
           tcp-server-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rtimeout-thunk
      (lambda (_%obj29952%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29952%_
           '15
           tcp-server-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-set-rtimeout
      (lambda (_%obj29950%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29950%_
           '16
           tcp-server-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-woptions
      (lambda (_%obj29948%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29948%_
           '17
           tcp-server-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wtimeout
      (lambda (_%obj29946%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29946%_
           '18
           tcp-server-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wtimeout-thunk
      (lambda (_%obj29944%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29944%_
           '19
           tcp-server-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-set-wtimeout
      (lambda (_%obj29942%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29942%_
           '20
           tcp-server-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-io-exception-handler
      (lambda (_%obj29940%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29940%_
           '21
           tcp-server-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rdevice-condvar-set!
      (lambda (_%obj29937%_ _%val29938%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29937%_
           _%val29938%_
           '1
           tcp-server-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-client-psettings-set!
      (lambda (_%obj29934%_ _%val29935%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29934%_
           _%val29935%_
           '2
           tcp-server-port::t
           'client-psettings))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-read-datum-set!
      (lambda (_%obj29931%_ _%val29932%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29931%_
           _%val29932%_
           '3
           tcp-server-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-write-datum-set!
      (lambda (_%obj29928%_ _%val29929%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29928%_
           _%val29929%_
           '4
           tcp-server-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-newline-set!
      (lambda (_%obj29925%_ _%val29926%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29925%_
           _%val29926%_
           '5
           tcp-server-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-force-output-set!
      (lambda (_%obj29922%_ _%val29923%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29922%_
           _%val29923%_
           '6
           tcp-server-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-mutex-set!
      (lambda (_%obj29919%_ _%val29920%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29919%_
           _%val29920%_
           '7
           tcp-server-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rkind-set!
      (lambda (_%obj29916%_ _%val29917%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29916%_
           _%val29917%_
           '8
           tcp-server-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wkind-set!
      (lambda (_%obj29913%_ _%val29914%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29913%_
           _%val29914%_
           '9
           tcp-server-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-name-set!
      (lambda (_%obj29910%_ _%val29911%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29910%_
           _%val29911%_
           '10
           tcp-server-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wait-set!
      (lambda (_%obj29907%_ _%val29908%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29907%_
           _%val29908%_
           '11
           tcp-server-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-close-set!
      (lambda (_%obj29904%_ _%val29905%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29904%_
           _%val29905%_
           '12
           tcp-server-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-roptions-set!
      (lambda (_%obj29901%_ _%val29902%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29901%_
           _%val29902%_
           '13
           tcp-server-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rtimeout-set!
      (lambda (_%obj29898%_ _%val29899%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29898%_
           _%val29899%_
           '14
           tcp-server-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-rtimeout-thunk-set!
      (lambda (_%obj29895%_ _%val29896%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29895%_
           _%val29896%_
           '15
           tcp-server-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-set-rtimeout-set!
      (lambda (_%obj29892%_ _%val29893%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29892%_
           _%val29893%_
           '16
           tcp-server-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-woptions-set!
      (lambda (_%obj29889%_ _%val29890%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29889%_
           _%val29890%_
           '17
           tcp-server-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wtimeout-set!
      (lambda (_%obj29886%_ _%val29887%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29886%_
           _%val29887%_
           '18
           tcp-server-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-wtimeout-thunk-set!
      (lambda (_%obj29883%_ _%val29884%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29883%_
           _%val29884%_
           '19
           tcp-server-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-set-wtimeout-set!
      (lambda (_%obj29880%_ _%val29881%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29880%_
           _%val29881%_
           '20
           tcp-server-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::tcp-server-port-io-exception-handler-set!
      (lambda (_%obj29877%_ _%val29878%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29877%_
           _%val29878%_
           '21
           tcp-server-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rdevice-condvar
      (lambda (_%obj29875%_)
        (##structure-ref _%obj29875%_ '1 tcp-server-port::t 'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-client-psettings
      (lambda (_%obj29873%_)
        (##structure-ref
         _%obj29873%_
         '2
         tcp-server-port::t
         'client-psettings)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-read-datum
      (lambda (_%obj29871%_)
        (##structure-ref _%obj29871%_ '3 tcp-server-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-write-datum
      (lambda (_%obj29869%_)
        (##structure-ref _%obj29869%_ '4 tcp-server-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-newline
      (lambda (_%obj29867%_)
        (##structure-ref _%obj29867%_ '5 tcp-server-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-force-output
      (lambda (_%obj29865%_)
        (##structure-ref _%obj29865%_ '6 tcp-server-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-mutex
      (lambda (_%obj29863%_)
        (##structure-ref _%obj29863%_ '7 tcp-server-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rkind
      (lambda (_%obj29861%_)
        (##structure-ref _%obj29861%_ '8 tcp-server-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wkind
      (lambda (_%obj29859%_)
        (##structure-ref _%obj29859%_ '9 tcp-server-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-name
      (lambda (_%obj29857%_)
        (##structure-ref _%obj29857%_ '10 tcp-server-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wait
      (lambda (_%obj29855%_)
        (##structure-ref _%obj29855%_ '11 tcp-server-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-close
      (lambda (_%obj29853%_)
        (##structure-ref _%obj29853%_ '12 tcp-server-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-roptions
      (lambda (_%obj29851%_)
        (##structure-ref _%obj29851%_ '13 tcp-server-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rtimeout
      (lambda (_%obj29849%_)
        (##structure-ref _%obj29849%_ '14 tcp-server-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rtimeout-thunk
      (lambda (_%obj29847%_)
        (##structure-ref _%obj29847%_ '15 tcp-server-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-set-rtimeout
      (lambda (_%obj29845%_)
        (##structure-ref _%obj29845%_ '16 tcp-server-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-woptions
      (lambda (_%obj29843%_)
        (##structure-ref _%obj29843%_ '17 tcp-server-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wtimeout
      (lambda (_%obj29841%_)
        (##structure-ref _%obj29841%_ '18 tcp-server-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wtimeout-thunk
      (lambda (_%obj29839%_)
        (##structure-ref _%obj29839%_ '19 tcp-server-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-set-wtimeout
      (lambda (_%obj29837%_)
        (##structure-ref _%obj29837%_ '20 tcp-server-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-io-exception-handler
      (lambda (_%obj29835%_)
        (##structure-ref
         _%obj29835%_
         '21
         tcp-server-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rdevice-condvar-set!
      (lambda (_%obj29832%_ _%val29833%_)
        (##structure-set!
         _%obj29832%_
         _%val29833%_
         '1
         tcp-server-port::t
         'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-client-psettings-set!
      (lambda (_%obj29829%_ _%val29830%_)
        (##structure-set!
         _%obj29829%_
         _%val29830%_
         '2
         tcp-server-port::t
         'client-psettings)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-read-datum-set!
      (lambda (_%obj29826%_ _%val29827%_)
        (##structure-set!
         _%obj29826%_
         _%val29827%_
         '3
         tcp-server-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-write-datum-set!
      (lambda (_%obj29823%_ _%val29824%_)
        (##structure-set!
         _%obj29823%_
         _%val29824%_
         '4
         tcp-server-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-newline-set!
      (lambda (_%obj29820%_ _%val29821%_)
        (##structure-set!
         _%obj29820%_
         _%val29821%_
         '5
         tcp-server-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-force-output-set!
      (lambda (_%obj29817%_ _%val29818%_)
        (##structure-set!
         _%obj29817%_
         _%val29818%_
         '6
         tcp-server-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-mutex-set!
      (lambda (_%obj29814%_ _%val29815%_)
        (##structure-set!
         _%obj29814%_
         _%val29815%_
         '7
         tcp-server-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rkind-set!
      (lambda (_%obj29811%_ _%val29812%_)
        (##structure-set!
         _%obj29811%_
         _%val29812%_
         '8
         tcp-server-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wkind-set!
      (lambda (_%obj29808%_ _%val29809%_)
        (##structure-set!
         _%obj29808%_
         _%val29809%_
         '9
         tcp-server-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-name-set!
      (lambda (_%obj29805%_ _%val29806%_)
        (##structure-set!
         _%obj29805%_
         _%val29806%_
         '10
         tcp-server-port::t
         'name)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wait-set!
      (lambda (_%obj29802%_ _%val29803%_)
        (##structure-set!
         _%obj29802%_
         _%val29803%_
         '11
         tcp-server-port::t
         'wait)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-close-set!
      (lambda (_%obj29799%_ _%val29800%_)
        (##structure-set!
         _%obj29799%_
         _%val29800%_
         '12
         tcp-server-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-roptions-set!
      (lambda (_%obj29796%_ _%val29797%_)
        (##structure-set!
         _%obj29796%_
         _%val29797%_
         '13
         tcp-server-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rtimeout-set!
      (lambda (_%obj29793%_ _%val29794%_)
        (##structure-set!
         _%obj29793%_
         _%val29794%_
         '14
         tcp-server-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-rtimeout-thunk-set!
      (lambda (_%obj29790%_ _%val29791%_)
        (##structure-set!
         _%obj29790%_
         _%val29791%_
         '15
         tcp-server-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-set-rtimeout-set!
      (lambda (_%obj29787%_ _%val29788%_)
        (##structure-set!
         _%obj29787%_
         _%val29788%_
         '16
         tcp-server-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-woptions-set!
      (lambda (_%obj29784%_ _%val29785%_)
        (##structure-set!
         _%obj29784%_
         _%val29785%_
         '17
         tcp-server-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wtimeout-set!
      (lambda (_%obj29781%_ _%val29782%_)
        (##structure-set!
         _%obj29781%_
         _%val29782%_
         '18
         tcp-server-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-wtimeout-thunk-set!
      (lambda (_%obj29778%_ _%val29779%_)
        (##structure-set!
         _%obj29778%_
         _%val29779%_
         '19
         tcp-server-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-set-wtimeout-set!
      (lambda (_%obj29775%_ _%val29776%_)
        (##structure-set!
         _%obj29775%_
         _%val29776%_
         '20
         tcp-server-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::tcp-server-port-io-exception-handler-set!
      (lambda (_%obj29770%_ _%val29772%_)
        (##structure-set!
         _%obj29770%_
         _%val29772%_
         '21
         tcp-server-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rdevice-condvar
      (lambda (_%obj29768%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29768%_
           '1
           udp-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wdevice-condvar
      (lambda (_%obj29766%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29766%_
           '2
           udp-port::t
           'wdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-latest-source
      (lambda (_%obj29764%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29764%_
           '3
           udp-port::t
           'latest-source))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-read-datum
      (lambda (_%obj29762%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29762%_
           '4
           udp-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-write-datum
      (lambda (_%obj29760%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29760%_
           '5
           udp-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-newline
      (lambda (_%obj29758%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29758%_ '6 udp-port::t 'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-force-output
      (lambda (_%obj29756%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29756%_
           '7
           udp-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-mutex
      (lambda (_%obj29754%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29754%_ '8 udp-port::t 'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rkind
      (lambda (_%obj29752%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29752%_ '9 udp-port::t 'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wkind
      (lambda (_%obj29750%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29750%_ '10 udp-port::t 'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-name
      (lambda (_%obj29748%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29748%_ '11 udp-port::t 'name))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wait
      (lambda (_%obj29746%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29746%_ '12 udp-port::t 'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-close
      (lambda (_%obj29744%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29744%_ '13 udp-port::t 'close))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-roptions
      (lambda (_%obj29742%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29742%_ '14 udp-port::t 'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rtimeout
      (lambda (_%obj29740%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29740%_ '15 udp-port::t 'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rtimeout-thunk
      (lambda (_%obj29738%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29738%_
           '16
           udp-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-set-rtimeout
      (lambda (_%obj29736%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29736%_
           '17
           udp-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-woptions
      (lambda (_%obj29734%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29734%_ '18 udp-port::t 'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wtimeout
      (lambda (_%obj29732%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29732%_ '19 udp-port::t 'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wtimeout-thunk
      (lambda (_%obj29730%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29730%_
           '20
           udp-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-set-wtimeout
      (lambda (_%obj29728%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29728%_
           '21
           udp-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-io-exception-handler
      (lambda (_%obj29726%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29726%_
           '22
           udp-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rdevice-condvar-set!
      (lambda (_%obj29723%_ _%val29724%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29723%_
           _%val29724%_
           '1
           udp-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wdevice-condvar-set!
      (lambda (_%obj29720%_ _%val29721%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29720%_
           _%val29721%_
           '2
           udp-port::t
           'wdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-latest-source-set!
      (lambda (_%obj29717%_ _%val29718%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29717%_
           _%val29718%_
           '3
           udp-port::t
           'latest-source))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-read-datum-set!
      (lambda (_%obj29714%_ _%val29715%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29714%_
           _%val29715%_
           '4
           udp-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-write-datum-set!
      (lambda (_%obj29711%_ _%val29712%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29711%_
           _%val29712%_
           '5
           udp-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-newline-set!
      (lambda (_%obj29708%_ _%val29709%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29708%_
           _%val29709%_
           '6
           udp-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-force-output-set!
      (lambda (_%obj29705%_ _%val29706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29705%_
           _%val29706%_
           '7
           udp-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-mutex-set!
      (lambda (_%obj29702%_ _%val29703%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29702%_
           _%val29703%_
           '8
           udp-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rkind-set!
      (lambda (_%obj29699%_ _%val29700%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29699%_
           _%val29700%_
           '9
           udp-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wkind-set!
      (lambda (_%obj29696%_ _%val29697%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29696%_
           _%val29697%_
           '10
           udp-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-name-set!
      (lambda (_%obj29693%_ _%val29694%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29693%_
           _%val29694%_
           '11
           udp-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wait-set!
      (lambda (_%obj29690%_ _%val29691%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29690%_
           _%val29691%_
           '12
           udp-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-close-set!
      (lambda (_%obj29687%_ _%val29688%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29687%_
           _%val29688%_
           '13
           udp-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-roptions-set!
      (lambda (_%obj29684%_ _%val29685%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29684%_
           _%val29685%_
           '14
           udp-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rtimeout-set!
      (lambda (_%obj29681%_ _%val29682%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29681%_
           _%val29682%_
           '15
           udp-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-rtimeout-thunk-set!
      (lambda (_%obj29678%_ _%val29679%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29678%_
           _%val29679%_
           '16
           udp-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-set-rtimeout-set!
      (lambda (_%obj29675%_ _%val29676%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29675%_
           _%val29676%_
           '17
           udp-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-woptions-set!
      (lambda (_%obj29672%_ _%val29673%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29672%_
           _%val29673%_
           '18
           udp-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wtimeout-set!
      (lambda (_%obj29669%_ _%val29670%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29669%_
           _%val29670%_
           '19
           udp-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-wtimeout-thunk-set!
      (lambda (_%obj29666%_ _%val29667%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29666%_
           _%val29667%_
           '20
           udp-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-set-wtimeout-set!
      (lambda (_%obj29663%_ _%val29664%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29663%_
           _%val29664%_
           '21
           udp-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::udp-port-io-exception-handler-set!
      (lambda (_%obj29660%_ _%val29661%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29660%_
           _%val29661%_
           '22
           udp-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rdevice-condvar
      (lambda (_%obj29658%_)
        (##structure-ref _%obj29658%_ '1 udp-port::t 'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wdevice-condvar
      (lambda (_%obj29656%_)
        (##structure-ref _%obj29656%_ '2 udp-port::t 'wdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-latest-source
      (lambda (_%obj29654%_)
        (##structure-ref _%obj29654%_ '3 udp-port::t 'latest-source)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-read-datum
      (lambda (_%obj29652%_)
        (##structure-ref _%obj29652%_ '4 udp-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-write-datum
      (lambda (_%obj29650%_)
        (##structure-ref _%obj29650%_ '5 udp-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-newline
      (lambda (_%obj29648%_)
        (##structure-ref _%obj29648%_ '6 udp-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-force-output
      (lambda (_%obj29646%_)
        (##structure-ref _%obj29646%_ '7 udp-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-mutex
      (lambda (_%obj29644%_)
        (##structure-ref _%obj29644%_ '8 udp-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rkind
      (lambda (_%obj29642%_)
        (##structure-ref _%obj29642%_ '9 udp-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wkind
      (lambda (_%obj29640%_)
        (##structure-ref _%obj29640%_ '10 udp-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-name
      (lambda (_%obj29638%_)
        (##structure-ref _%obj29638%_ '11 udp-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wait
      (lambda (_%obj29636%_)
        (##structure-ref _%obj29636%_ '12 udp-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-close
      (lambda (_%obj29634%_)
        (##structure-ref _%obj29634%_ '13 udp-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-roptions
      (lambda (_%obj29632%_)
        (##structure-ref _%obj29632%_ '14 udp-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rtimeout
      (lambda (_%obj29630%_)
        (##structure-ref _%obj29630%_ '15 udp-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rtimeout-thunk
      (lambda (_%obj29628%_)
        (##structure-ref _%obj29628%_ '16 udp-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-set-rtimeout
      (lambda (_%obj29626%_)
        (##structure-ref _%obj29626%_ '17 udp-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-woptions
      (lambda (_%obj29624%_)
        (##structure-ref _%obj29624%_ '18 udp-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wtimeout
      (lambda (_%obj29622%_)
        (##structure-ref _%obj29622%_ '19 udp-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wtimeout-thunk
      (lambda (_%obj29620%_)
        (##structure-ref _%obj29620%_ '20 udp-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-set-wtimeout
      (lambda (_%obj29618%_)
        (##structure-ref _%obj29618%_ '21 udp-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-io-exception-handler
      (lambda (_%obj29616%_)
        (##structure-ref _%obj29616%_ '22 udp-port::t 'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rdevice-condvar-set!
      (lambda (_%obj29613%_ _%val29614%_)
        (##structure-set!
         _%obj29613%_
         _%val29614%_
         '1
         udp-port::t
         'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wdevice-condvar-set!
      (lambda (_%obj29610%_ _%val29611%_)
        (##structure-set!
         _%obj29610%_
         _%val29611%_
         '2
         udp-port::t
         'wdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-latest-source-set!
      (lambda (_%obj29607%_ _%val29608%_)
        (##structure-set!
         _%obj29607%_
         _%val29608%_
         '3
         udp-port::t
         'latest-source)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-read-datum-set!
      (lambda (_%obj29604%_ _%val29605%_)
        (##structure-set!
         _%obj29604%_
         _%val29605%_
         '4
         udp-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-write-datum-set!
      (lambda (_%obj29601%_ _%val29602%_)
        (##structure-set!
         _%obj29601%_
         _%val29602%_
         '5
         udp-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-newline-set!
      (lambda (_%obj29598%_ _%val29599%_)
        (##structure-set! _%obj29598%_ _%val29599%_ '6 udp-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-force-output-set!
      (lambda (_%obj29595%_ _%val29596%_)
        (##structure-set!
         _%obj29595%_
         _%val29596%_
         '7
         udp-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-mutex-set!
      (lambda (_%obj29592%_ _%val29593%_)
        (##structure-set! _%obj29592%_ _%val29593%_ '8 udp-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rkind-set!
      (lambda (_%obj29589%_ _%val29590%_)
        (##structure-set! _%obj29589%_ _%val29590%_ '9 udp-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wkind-set!
      (lambda (_%obj29586%_ _%val29587%_)
        (##structure-set! _%obj29586%_ _%val29587%_ '10 udp-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-name-set!
      (lambda (_%obj29583%_ _%val29584%_)
        (##structure-set! _%obj29583%_ _%val29584%_ '11 udp-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wait-set!
      (lambda (_%obj29580%_ _%val29581%_)
        (##structure-set! _%obj29580%_ _%val29581%_ '12 udp-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-close-set!
      (lambda (_%obj29577%_ _%val29578%_)
        (##structure-set! _%obj29577%_ _%val29578%_ '13 udp-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-roptions-set!
      (lambda (_%obj29574%_ _%val29575%_)
        (##structure-set!
         _%obj29574%_
         _%val29575%_
         '14
         udp-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rtimeout-set!
      (lambda (_%obj29571%_ _%val29572%_)
        (##structure-set!
         _%obj29571%_
         _%val29572%_
         '15
         udp-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-rtimeout-thunk-set!
      (lambda (_%obj29568%_ _%val29569%_)
        (##structure-set!
         _%obj29568%_
         _%val29569%_
         '16
         udp-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-set-rtimeout-set!
      (lambda (_%obj29565%_ _%val29566%_)
        (##structure-set!
         _%obj29565%_
         _%val29566%_
         '17
         udp-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-woptions-set!
      (lambda (_%obj29562%_ _%val29563%_)
        (##structure-set!
         _%obj29562%_
         _%val29563%_
         '18
         udp-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wtimeout-set!
      (lambda (_%obj29559%_ _%val29560%_)
        (##structure-set!
         _%obj29559%_
         _%val29560%_
         '19
         udp-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-wtimeout-thunk-set!
      (lambda (_%obj29556%_ _%val29557%_)
        (##structure-set!
         _%obj29556%_
         _%val29557%_
         '20
         udp-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-set-wtimeout-set!
      (lambda (_%obj29553%_ _%val29554%_)
        (##structure-set!
         _%obj29553%_
         _%val29554%_
         '21
         udp-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::udp-port-io-exception-handler-set!
      (lambda (_%obj29548%_ _%val29550%_)
        (##structure-set!
         _%obj29548%_
         _%val29550%_
         '22
         udp-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rdevice-condvar
      (lambda (_%obj29546%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29546%_
           '1
           directory-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-path
      (lambda (_%obj29544%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29544%_
           '2
           directory-port::t
           'path))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-read-datum
      (lambda (_%obj29542%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29542%_
           '3
           directory-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-write-datum
      (lambda (_%obj29540%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29540%_
           '4
           directory-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-newline
      (lambda (_%obj29538%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29538%_
           '5
           directory-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-force-output
      (lambda (_%obj29536%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29536%_
           '6
           directory-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-mutex
      (lambda (_%obj29534%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29534%_
           '7
           directory-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rkind
      (lambda (_%obj29532%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29532%_
           '8
           directory-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wkind
      (lambda (_%obj29530%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29530%_
           '9
           directory-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-name
      (lambda (_%obj29528%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29528%_
           '10
           directory-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wait
      (lambda (_%obj29526%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29526%_
           '11
           directory-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-close
      (lambda (_%obj29524%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29524%_
           '12
           directory-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-roptions
      (lambda (_%obj29522%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29522%_
           '13
           directory-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rtimeout
      (lambda (_%obj29520%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29520%_
           '14
           directory-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rtimeout-thunk
      (lambda (_%obj29518%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29518%_
           '15
           directory-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-set-rtimeout
      (lambda (_%obj29516%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29516%_
           '16
           directory-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-woptions
      (lambda (_%obj29514%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29514%_
           '17
           directory-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wtimeout
      (lambda (_%obj29512%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29512%_
           '18
           directory-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wtimeout-thunk
      (lambda (_%obj29510%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29510%_
           '19
           directory-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-set-wtimeout
      (lambda (_%obj29508%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29508%_
           '20
           directory-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-io-exception-handler
      (lambda (_%obj29506%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29506%_
           '21
           directory-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rdevice-condvar-set!
      (lambda (_%obj29503%_ _%val29504%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29503%_
           _%val29504%_
           '1
           directory-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-path-set!
      (lambda (_%obj29500%_ _%val29501%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29500%_
           _%val29501%_
           '2
           directory-port::t
           'path))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-read-datum-set!
      (lambda (_%obj29497%_ _%val29498%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29497%_
           _%val29498%_
           '3
           directory-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-write-datum-set!
      (lambda (_%obj29494%_ _%val29495%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29494%_
           _%val29495%_
           '4
           directory-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-newline-set!
      (lambda (_%obj29491%_ _%val29492%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29491%_
           _%val29492%_
           '5
           directory-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-force-output-set!
      (lambda (_%obj29488%_ _%val29489%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29488%_
           _%val29489%_
           '6
           directory-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-mutex-set!
      (lambda (_%obj29485%_ _%val29486%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29485%_
           _%val29486%_
           '7
           directory-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rkind-set!
      (lambda (_%obj29482%_ _%val29483%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29482%_
           _%val29483%_
           '8
           directory-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wkind-set!
      (lambda (_%obj29479%_ _%val29480%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29479%_
           _%val29480%_
           '9
           directory-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-name-set!
      (lambda (_%obj29476%_ _%val29477%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29476%_
           _%val29477%_
           '10
           directory-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wait-set!
      (lambda (_%obj29473%_ _%val29474%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29473%_
           _%val29474%_
           '11
           directory-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-close-set!
      (lambda (_%obj29470%_ _%val29471%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29470%_
           _%val29471%_
           '12
           directory-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-roptions-set!
      (lambda (_%obj29467%_ _%val29468%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29467%_
           _%val29468%_
           '13
           directory-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rtimeout-set!
      (lambda (_%obj29464%_ _%val29465%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29464%_
           _%val29465%_
           '14
           directory-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-rtimeout-thunk-set!
      (lambda (_%obj29461%_ _%val29462%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29461%_
           _%val29462%_
           '15
           directory-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-set-rtimeout-set!
      (lambda (_%obj29458%_ _%val29459%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29458%_
           _%val29459%_
           '16
           directory-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-woptions-set!
      (lambda (_%obj29455%_ _%val29456%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29455%_
           _%val29456%_
           '17
           directory-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wtimeout-set!
      (lambda (_%obj29452%_ _%val29453%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29452%_
           _%val29453%_
           '18
           directory-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-wtimeout-thunk-set!
      (lambda (_%obj29449%_ _%val29450%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29449%_
           _%val29450%_
           '19
           directory-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-set-wtimeout-set!
      (lambda (_%obj29446%_ _%val29447%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29446%_
           _%val29447%_
           '20
           directory-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::directory-port-io-exception-handler-set!
      (lambda (_%obj29443%_ _%val29444%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29443%_
           _%val29444%_
           '21
           directory-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rdevice-condvar
      (lambda (_%obj29441%_)
        (##structure-ref _%obj29441%_ '1 directory-port::t 'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-path
      (lambda (_%obj29439%_)
        (##structure-ref _%obj29439%_ '2 directory-port::t 'path)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-read-datum
      (lambda (_%obj29437%_)
        (##structure-ref _%obj29437%_ '3 directory-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-write-datum
      (lambda (_%obj29435%_)
        (##structure-ref _%obj29435%_ '4 directory-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-newline
      (lambda (_%obj29433%_)
        (##structure-ref _%obj29433%_ '5 directory-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-force-output
      (lambda (_%obj29431%_)
        (##structure-ref _%obj29431%_ '6 directory-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-mutex
      (lambda (_%obj29429%_)
        (##structure-ref _%obj29429%_ '7 directory-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rkind
      (lambda (_%obj29427%_)
        (##structure-ref _%obj29427%_ '8 directory-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wkind
      (lambda (_%obj29425%_)
        (##structure-ref _%obj29425%_ '9 directory-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-name
      (lambda (_%obj29423%_)
        (##structure-ref _%obj29423%_ '10 directory-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wait
      (lambda (_%obj29421%_)
        (##structure-ref _%obj29421%_ '11 directory-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-close
      (lambda (_%obj29419%_)
        (##structure-ref _%obj29419%_ '12 directory-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-roptions
      (lambda (_%obj29417%_)
        (##structure-ref _%obj29417%_ '13 directory-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rtimeout
      (lambda (_%obj29415%_)
        (##structure-ref _%obj29415%_ '14 directory-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rtimeout-thunk
      (lambda (_%obj29413%_)
        (##structure-ref _%obj29413%_ '15 directory-port::t 'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-set-rtimeout
      (lambda (_%obj29411%_)
        (##structure-ref _%obj29411%_ '16 directory-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-woptions
      (lambda (_%obj29409%_)
        (##structure-ref _%obj29409%_ '17 directory-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wtimeout
      (lambda (_%obj29407%_)
        (##structure-ref _%obj29407%_ '18 directory-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wtimeout-thunk
      (lambda (_%obj29405%_)
        (##structure-ref _%obj29405%_ '19 directory-port::t 'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-set-wtimeout
      (lambda (_%obj29403%_)
        (##structure-ref _%obj29403%_ '20 directory-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-io-exception-handler
      (lambda (_%obj29401%_)
        (##structure-ref
         _%obj29401%_
         '21
         directory-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rdevice-condvar-set!
      (lambda (_%obj29398%_ _%val29399%_)
        (##structure-set!
         _%obj29398%_
         _%val29399%_
         '1
         directory-port::t
         'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-path-set!
      (lambda (_%obj29395%_ _%val29396%_)
        (##structure-set!
         _%obj29395%_
         _%val29396%_
         '2
         directory-port::t
         'path)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-read-datum-set!
      (lambda (_%obj29392%_ _%val29393%_)
        (##structure-set!
         _%obj29392%_
         _%val29393%_
         '3
         directory-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-write-datum-set!
      (lambda (_%obj29389%_ _%val29390%_)
        (##structure-set!
         _%obj29389%_
         _%val29390%_
         '4
         directory-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-newline-set!
      (lambda (_%obj29386%_ _%val29387%_)
        (##structure-set!
         _%obj29386%_
         _%val29387%_
         '5
         directory-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-force-output-set!
      (lambda (_%obj29383%_ _%val29384%_)
        (##structure-set!
         _%obj29383%_
         _%val29384%_
         '6
         directory-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-mutex-set!
      (lambda (_%obj29380%_ _%val29381%_)
        (##structure-set!
         _%obj29380%_
         _%val29381%_
         '7
         directory-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rkind-set!
      (lambda (_%obj29377%_ _%val29378%_)
        (##structure-set!
         _%obj29377%_
         _%val29378%_
         '8
         directory-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wkind-set!
      (lambda (_%obj29374%_ _%val29375%_)
        (##structure-set!
         _%obj29374%_
         _%val29375%_
         '9
         directory-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-name-set!
      (lambda (_%obj29371%_ _%val29372%_)
        (##structure-set!
         _%obj29371%_
         _%val29372%_
         '10
         directory-port::t
         'name)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wait-set!
      (lambda (_%obj29368%_ _%val29369%_)
        (##structure-set!
         _%obj29368%_
         _%val29369%_
         '11
         directory-port::t
         'wait)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-close-set!
      (lambda (_%obj29365%_ _%val29366%_)
        (##structure-set!
         _%obj29365%_
         _%val29366%_
         '12
         directory-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-roptions-set!
      (lambda (_%obj29362%_ _%val29363%_)
        (##structure-set!
         _%obj29362%_
         _%val29363%_
         '13
         directory-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rtimeout-set!
      (lambda (_%obj29359%_ _%val29360%_)
        (##structure-set!
         _%obj29359%_
         _%val29360%_
         '14
         directory-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-rtimeout-thunk-set!
      (lambda (_%obj29356%_ _%val29357%_)
        (##structure-set!
         _%obj29356%_
         _%val29357%_
         '15
         directory-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-set-rtimeout-set!
      (lambda (_%obj29353%_ _%val29354%_)
        (##structure-set!
         _%obj29353%_
         _%val29354%_
         '16
         directory-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-woptions-set!
      (lambda (_%obj29350%_ _%val29351%_)
        (##structure-set!
         _%obj29350%_
         _%val29351%_
         '17
         directory-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wtimeout-set!
      (lambda (_%obj29347%_ _%val29348%_)
        (##structure-set!
         _%obj29347%_
         _%val29348%_
         '18
         directory-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-wtimeout-thunk-set!
      (lambda (_%obj29344%_ _%val29345%_)
        (##structure-set!
         _%obj29344%_
         _%val29345%_
         '19
         directory-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-set-wtimeout-set!
      (lambda (_%obj29341%_ _%val29342%_)
        (##structure-set!
         _%obj29341%_
         _%val29342%_
         '20
         directory-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::directory-port-io-exception-handler-set!
      (lambda (_%obj29336%_ _%val29338%_)
        (##structure-set!
         _%obj29336%_
         _%val29338%_
         '21
         directory-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rdevice-condvar
      (lambda (_%obj29334%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29334%_
           '1
           event-queue-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-selector
      (lambda (_%obj29332%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29332%_
           '2
           event-queue-port::t
           'selector))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-read-datum
      (lambda (_%obj29330%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29330%_
           '3
           event-queue-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-write-datum
      (lambda (_%obj29328%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29328%_
           '4
           event-queue-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-newline
      (lambda (_%obj29326%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29326%_
           '5
           event-queue-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-force-output
      (lambda (_%obj29324%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29324%_
           '6
           event-queue-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-mutex
      (lambda (_%obj29322%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29322%_
           '7
           event-queue-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rkind
      (lambda (_%obj29320%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29320%_
           '8
           event-queue-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wkind
      (lambda (_%obj29318%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29318%_
           '9
           event-queue-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-name
      (lambda (_%obj29316%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29316%_
           '10
           event-queue-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wait
      (lambda (_%obj29314%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29314%_
           '11
           event-queue-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-close
      (lambda (_%obj29312%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29312%_
           '12
           event-queue-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-roptions
      (lambda (_%obj29310%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29310%_
           '13
           event-queue-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rtimeout
      (lambda (_%obj29308%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29308%_
           '14
           event-queue-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rtimeout-thunk
      (lambda (_%obj29306%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29306%_
           '15
           event-queue-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-set-rtimeout
      (lambda (_%obj29304%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29304%_
           '16
           event-queue-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-woptions
      (lambda (_%obj29302%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29302%_
           '17
           event-queue-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wtimeout
      (lambda (_%obj29300%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29300%_
           '18
           event-queue-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wtimeout-thunk
      (lambda (_%obj29298%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29298%_
           '19
           event-queue-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-set-wtimeout
      (lambda (_%obj29296%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29296%_
           '20
           event-queue-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-io-exception-handler
      (lambda (_%obj29294%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29294%_
           '21
           event-queue-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rdevice-condvar-set!
      (lambda (_%obj29291%_ _%val29292%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29291%_
           _%val29292%_
           '1
           event-queue-port::t
           'rdevice-condvar))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-selector-set!
      (lambda (_%obj29288%_ _%val29289%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29288%_
           _%val29289%_
           '2
           event-queue-port::t
           'selector))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-read-datum-set!
      (lambda (_%obj29285%_ _%val29286%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29285%_
           _%val29286%_
           '3
           event-queue-port::t
           'read-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-write-datum-set!
      (lambda (_%obj29282%_ _%val29283%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29282%_
           _%val29283%_
           '4
           event-queue-port::t
           'write-datum))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-newline-set!
      (lambda (_%obj29279%_ _%val29280%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29279%_
           _%val29280%_
           '5
           event-queue-port::t
           'newline))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-force-output-set!
      (lambda (_%obj29276%_ _%val29277%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29276%_
           _%val29277%_
           '6
           event-queue-port::t
           'force-output))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-mutex-set!
      (lambda (_%obj29273%_ _%val29274%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29273%_
           _%val29274%_
           '7
           event-queue-port::t
           'mutex))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rkind-set!
      (lambda (_%obj29270%_ _%val29271%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29270%_
           _%val29271%_
           '8
           event-queue-port::t
           'rkind))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wkind-set!
      (lambda (_%obj29267%_ _%val29268%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29267%_
           _%val29268%_
           '9
           event-queue-port::t
           'wkind))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-name-set!
      (lambda (_%obj29264%_ _%val29265%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29264%_
           _%val29265%_
           '10
           event-queue-port::t
           'name))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wait-set!
      (lambda (_%obj29261%_ _%val29262%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29261%_
           _%val29262%_
           '11
           event-queue-port::t
           'wait))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-close-set!
      (lambda (_%obj29258%_ _%val29259%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29258%_
           _%val29259%_
           '12
           event-queue-port::t
           'close))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-roptions-set!
      (lambda (_%obj29255%_ _%val29256%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29255%_
           _%val29256%_
           '13
           event-queue-port::t
           'roptions))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rtimeout-set!
      (lambda (_%obj29252%_ _%val29253%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29252%_
           _%val29253%_
           '14
           event-queue-port::t
           'rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-rtimeout-thunk-set!
      (lambda (_%obj29249%_ _%val29250%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29249%_
           _%val29250%_
           '15
           event-queue-port::t
           'rtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-set-rtimeout-set!
      (lambda (_%obj29246%_ _%val29247%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29246%_
           _%val29247%_
           '16
           event-queue-port::t
           'set-rtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-woptions-set!
      (lambda (_%obj29243%_ _%val29244%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29243%_
           _%val29244%_
           '17
           event-queue-port::t
           'woptions))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wtimeout-set!
      (lambda (_%obj29240%_ _%val29241%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29240%_
           _%val29241%_
           '18
           event-queue-port::t
           'wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-wtimeout-thunk-set!
      (lambda (_%obj29237%_ _%val29238%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29237%_
           _%val29238%_
           '19
           event-queue-port::t
           'wtimeout-thunk))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-set-wtimeout-set!
      (lambda (_%obj29234%_ _%val29235%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29234%_
           _%val29235%_
           '20
           event-queue-port::t
           'set-wtimeout))))
    (define gerbil/core/mop~MOP-system-classes#&::event-queue-port-io-exception-handler-set!
      (lambda (_%obj29231%_ _%val29232%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29231%_
           _%val29232%_
           '21
           event-queue-port::t
           'io-exception-handler))))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rdevice-condvar
      (lambda (_%obj29229%_)
        (##structure-ref
         _%obj29229%_
         '1
         event-queue-port::t
         'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-selector
      (lambda (_%obj29227%_)
        (##structure-ref _%obj29227%_ '2 event-queue-port::t 'selector)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-read-datum
      (lambda (_%obj29225%_)
        (##structure-ref _%obj29225%_ '3 event-queue-port::t 'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-write-datum
      (lambda (_%obj29223%_)
        (##structure-ref _%obj29223%_ '4 event-queue-port::t 'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-newline
      (lambda (_%obj29221%_)
        (##structure-ref _%obj29221%_ '5 event-queue-port::t 'newline)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-force-output
      (lambda (_%obj29219%_)
        (##structure-ref _%obj29219%_ '6 event-queue-port::t 'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-mutex
      (lambda (_%obj29217%_)
        (##structure-ref _%obj29217%_ '7 event-queue-port::t 'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rkind
      (lambda (_%obj29215%_)
        (##structure-ref _%obj29215%_ '8 event-queue-port::t 'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wkind
      (lambda (_%obj29213%_)
        (##structure-ref _%obj29213%_ '9 event-queue-port::t 'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-name
      (lambda (_%obj29211%_)
        (##structure-ref _%obj29211%_ '10 event-queue-port::t 'name)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wait
      (lambda (_%obj29209%_)
        (##structure-ref _%obj29209%_ '11 event-queue-port::t 'wait)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-close
      (lambda (_%obj29207%_)
        (##structure-ref _%obj29207%_ '12 event-queue-port::t 'close)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-roptions
      (lambda (_%obj29205%_)
        (##structure-ref _%obj29205%_ '13 event-queue-port::t 'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rtimeout
      (lambda (_%obj29203%_)
        (##structure-ref _%obj29203%_ '14 event-queue-port::t 'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rtimeout-thunk
      (lambda (_%obj29201%_)
        (##structure-ref
         _%obj29201%_
         '15
         event-queue-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-set-rtimeout
      (lambda (_%obj29199%_)
        (##structure-ref _%obj29199%_ '16 event-queue-port::t 'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-woptions
      (lambda (_%obj29197%_)
        (##structure-ref _%obj29197%_ '17 event-queue-port::t 'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wtimeout
      (lambda (_%obj29195%_)
        (##structure-ref _%obj29195%_ '18 event-queue-port::t 'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wtimeout-thunk
      (lambda (_%obj29193%_)
        (##structure-ref
         _%obj29193%_
         '19
         event-queue-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-set-wtimeout
      (lambda (_%obj29191%_)
        (##structure-ref _%obj29191%_ '20 event-queue-port::t 'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-io-exception-handler
      (lambda (_%obj29189%_)
        (##structure-ref
         _%obj29189%_
         '21
         event-queue-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rdevice-condvar-set!
      (lambda (_%obj29186%_ _%val29187%_)
        (##structure-set!
         _%obj29186%_
         _%val29187%_
         '1
         event-queue-port::t
         'rdevice-condvar)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-selector-set!
      (lambda (_%obj29183%_ _%val29184%_)
        (##structure-set!
         _%obj29183%_
         _%val29184%_
         '2
         event-queue-port::t
         'selector)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-read-datum-set!
      (lambda (_%obj29180%_ _%val29181%_)
        (##structure-set!
         _%obj29180%_
         _%val29181%_
         '3
         event-queue-port::t
         'read-datum)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-write-datum-set!
      (lambda (_%obj29177%_ _%val29178%_)
        (##structure-set!
         _%obj29177%_
         _%val29178%_
         '4
         event-queue-port::t
         'write-datum)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-newline-set!
      (lambda (_%obj29174%_ _%val29175%_)
        (##structure-set!
         _%obj29174%_
         _%val29175%_
         '5
         event-queue-port::t
         'newline)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-force-output-set!
      (lambda (_%obj29171%_ _%val29172%_)
        (##structure-set!
         _%obj29171%_
         _%val29172%_
         '6
         event-queue-port::t
         'force-output)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-mutex-set!
      (lambda (_%obj29168%_ _%val29169%_)
        (##structure-set!
         _%obj29168%_
         _%val29169%_
         '7
         event-queue-port::t
         'mutex)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rkind-set!
      (lambda (_%obj29165%_ _%val29166%_)
        (##structure-set!
         _%obj29165%_
         _%val29166%_
         '8
         event-queue-port::t
         'rkind)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wkind-set!
      (lambda (_%obj29162%_ _%val29163%_)
        (##structure-set!
         _%obj29162%_
         _%val29163%_
         '9
         event-queue-port::t
         'wkind)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-name-set!
      (lambda (_%obj29159%_ _%val29160%_)
        (##structure-set!
         _%obj29159%_
         _%val29160%_
         '10
         event-queue-port::t
         'name)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wait-set!
      (lambda (_%obj29156%_ _%val29157%_)
        (##structure-set!
         _%obj29156%_
         _%val29157%_
         '11
         event-queue-port::t
         'wait)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-close-set!
      (lambda (_%obj29153%_ _%val29154%_)
        (##structure-set!
         _%obj29153%_
         _%val29154%_
         '12
         event-queue-port::t
         'close)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-roptions-set!
      (lambda (_%obj29150%_ _%val29151%_)
        (##structure-set!
         _%obj29150%_
         _%val29151%_
         '13
         event-queue-port::t
         'roptions)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rtimeout-set!
      (lambda (_%obj29147%_ _%val29148%_)
        (##structure-set!
         _%obj29147%_
         _%val29148%_
         '14
         event-queue-port::t
         'rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-rtimeout-thunk-set!
      (lambda (_%obj29144%_ _%val29145%_)
        (##structure-set!
         _%obj29144%_
         _%val29145%_
         '15
         event-queue-port::t
         'rtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-set-rtimeout-set!
      (lambda (_%obj29141%_ _%val29142%_)
        (##structure-set!
         _%obj29141%_
         _%val29142%_
         '16
         event-queue-port::t
         'set-rtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-woptions-set!
      (lambda (_%obj29138%_ _%val29139%_)
        (##structure-set!
         _%obj29138%_
         _%val29139%_
         '17
         event-queue-port::t
         'woptions)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wtimeout-set!
      (lambda (_%obj29135%_ _%val29136%_)
        (##structure-set!
         _%obj29135%_
         _%val29136%_
         '18
         event-queue-port::t
         'wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-wtimeout-thunk-set!
      (lambda (_%obj29132%_ _%val29133%_)
        (##structure-set!
         _%obj29132%_
         _%val29133%_
         '19
         event-queue-port::t
         'wtimeout-thunk)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-set-wtimeout-set!
      (lambda (_%obj29129%_ _%val29130%_)
        (##structure-set!
         _%obj29129%_
         _%val29130%_
         '20
         event-queue-port::t
         'set-wtimeout)))
    (define gerbil/core/mop~MOP-system-classes#::event-queue-port-io-exception-handler-set!
      (lambda (_%obj29124%_ _%val29126%_)
        (##structure-set!
         _%obj29124%_
         _%val29126%_
         '21
         event-queue-port::t
         'io-exception-handler)))
    (define gerbil/core/mop~MOP-system-classes#&::table-flags
      (lambda (_%obj29122%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29122%_ '1 table::t 'flags))))
    (define gerbil/core/mop~MOP-system-classes#&::table-test
      (lambda (_%obj29120%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29120%_ '2 table::t 'test))))
    (define gerbil/core/mop~MOP-system-classes#&::table-hash
      (lambda (_%obj29118%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29118%_ '3 table::t 'hash))))
    (define gerbil/core/mop~MOP-system-classes#&::table-loads
      (lambda (_%obj29116%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29116%_ '4 table::t 'loads))))
    (define gerbil/core/mop~MOP-system-classes#&::table-gcht
      (lambda (_%obj29114%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29114%_ '5 table::t 'gcht))))
    (define gerbil/core/mop~MOP-system-classes#&::table-init
      (lambda (_%obj29112%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29112%_ '6 table::t 'init))))
    (define gerbil/core/mop~MOP-system-classes#&::table-flags-set!
      (lambda (_%obj29109%_ _%val29110%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29109%_
           _%val29110%_
           '1
           table::t
           'flags))))
    (define gerbil/core/mop~MOP-system-classes#&::table-test-set!
      (lambda (_%obj29106%_ _%val29107%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29106%_
           _%val29107%_
           '2
           table::t
           'test))))
    (define gerbil/core/mop~MOP-system-classes#&::table-hash-set!
      (lambda (_%obj29103%_ _%val29104%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29103%_
           _%val29104%_
           '3
           table::t
           'hash))))
    (define gerbil/core/mop~MOP-system-classes#&::table-loads-set!
      (lambda (_%obj29100%_ _%val29101%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29100%_
           _%val29101%_
           '4
           table::t
           'loads))))
    (define gerbil/core/mop~MOP-system-classes#&::table-gcht-set!
      (lambda (_%obj29097%_ _%val29098%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29097%_
           _%val29098%_
           '5
           table::t
           'gcht))))
    (define gerbil/core/mop~MOP-system-classes#&::table-init-set!
      (lambda (_%obj29094%_ _%val29095%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29094%_
           _%val29095%_
           '6
           table::t
           'init))))
    (define gerbil/core/mop~MOP-system-classes#::table-flags
      (lambda (_%obj29092%_)
        (##structure-ref _%obj29092%_ '1 table::t 'flags)))
    (define gerbil/core/mop~MOP-system-classes#::table-test
      (lambda (_%obj29090%_) (##structure-ref _%obj29090%_ '2 table::t 'test)))
    (define gerbil/core/mop~MOP-system-classes#::table-hash
      (lambda (_%obj29088%_) (##structure-ref _%obj29088%_ '3 table::t 'hash)))
    (define gerbil/core/mop~MOP-system-classes#::table-loads
      (lambda (_%obj29086%_)
        (##structure-ref _%obj29086%_ '4 table::t 'loads)))
    (define gerbil/core/mop~MOP-system-classes#::table-gcht
      (lambda (_%obj29084%_) (##structure-ref _%obj29084%_ '5 table::t 'gcht)))
    (define gerbil/core/mop~MOP-system-classes#::table-init
      (lambda (_%obj29082%_) (##structure-ref _%obj29082%_ '6 table::t 'init)))
    (define gerbil/core/mop~MOP-system-classes#::table-flags-set!
      (lambda (_%obj29079%_ _%val29080%_)
        (##structure-set! _%obj29079%_ _%val29080%_ '1 table::t 'flags)))
    (define gerbil/core/mop~MOP-system-classes#::table-test-set!
      (lambda (_%obj29076%_ _%val29077%_)
        (##structure-set! _%obj29076%_ _%val29077%_ '2 table::t 'test)))
    (define gerbil/core/mop~MOP-system-classes#::table-hash-set!
      (lambda (_%obj29073%_ _%val29074%_)
        (##structure-set! _%obj29073%_ _%val29074%_ '3 table::t 'hash)))
    (define gerbil/core/mop~MOP-system-classes#::table-loads-set!
      (lambda (_%obj29070%_ _%val29071%_)
        (##structure-set! _%obj29070%_ _%val29071%_ '4 table::t 'loads)))
    (define gerbil/core/mop~MOP-system-classes#::table-gcht-set!
      (lambda (_%obj29067%_ _%val29068%_)
        (##structure-set! _%obj29067%_ _%val29068%_ '5 table::t 'gcht)))
    (define gerbil/core/mop~MOP-system-classes#::table-init-set!
      (lambda (_%obj29062%_ _%val29064%_)
        (##structure-set! _%obj29062%_ _%val29064%_ '6 table::t 'init)))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-port
      (lambda (_%obj29060%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29060%_ '1 readenv::t 'port))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-readtable
      (lambda (_%obj29058%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29058%_ '2 readenv::t 'readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-wrapper
      (lambda (_%obj29056%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29056%_ '3 readenv::t 'wrapper))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-unwrapper
      (lambda (_%obj29054%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29054%_ '4 readenv::t 'unwrapper))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-script-line
      (lambda (_%obj29052%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29052%_
           '5
           readenv::t
           'script-line))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-case-conversion?
      (lambda (_%obj29050%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj29050%_
           '6
           readenv::t
           'case-conversion?))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-labels
      (lambda (_%obj29048%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29048%_ '7 readenv::t 'labels))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-container
      (lambda (_%obj29046%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29046%_ '8 readenv::t 'container))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-filepos
      (lambda (_%obj29044%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29044%_ '9 readenv::t 'filepos))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-read-cont
      (lambda (_%obj29042%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj29042%_ '10 readenv::t 'read-cont))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-port-set!
      (lambda (_%obj29039%_ _%val29040%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29039%_
           _%val29040%_
           '1
           readenv::t
           'port))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-readtable-set!
      (lambda (_%obj29036%_ _%val29037%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29036%_
           _%val29037%_
           '2
           readenv::t
           'readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-wrapper-set!
      (lambda (_%obj29033%_ _%val29034%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29033%_
           _%val29034%_
           '3
           readenv::t
           'wrapper))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-unwrapper-set!
      (lambda (_%obj29030%_ _%val29031%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29030%_
           _%val29031%_
           '4
           readenv::t
           'unwrapper))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-script-line-set!
      (lambda (_%obj29027%_ _%val29028%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29027%_
           _%val29028%_
           '5
           readenv::t
           'script-line))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-case-conversion?-set!
      (lambda (_%obj29024%_ _%val29025%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29024%_
           _%val29025%_
           '6
           readenv::t
           'case-conversion?))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-labels-set!
      (lambda (_%obj29021%_ _%val29022%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29021%_
           _%val29022%_
           '7
           readenv::t
           'labels))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-container-set!
      (lambda (_%obj29018%_ _%val29019%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29018%_
           _%val29019%_
           '8
           readenv::t
           'container))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-filepos-set!
      (lambda (_%obj29015%_ _%val29016%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29015%_
           _%val29016%_
           '9
           readenv::t
           'filepos))))
    (define gerbil/core/mop~MOP-system-classes#&::readenv-read-cont-set!
      (lambda (_%obj29012%_ _%val29013%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj29012%_
           _%val29013%_
           '10
           readenv::t
           'read-cont))))
    (define gerbil/core/mop~MOP-system-classes#::readenv-port
      (lambda (_%obj29010%_)
        (##structure-ref _%obj29010%_ '1 readenv::t 'port)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-readtable
      (lambda (_%obj29008%_)
        (##structure-ref _%obj29008%_ '2 readenv::t 'readtable)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-wrapper
      (lambda (_%obj29006%_)
        (##structure-ref _%obj29006%_ '3 readenv::t 'wrapper)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-unwrapper
      (lambda (_%obj29004%_)
        (##structure-ref _%obj29004%_ '4 readenv::t 'unwrapper)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-script-line
      (lambda (_%obj29002%_)
        (##structure-ref _%obj29002%_ '5 readenv::t 'script-line)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-case-conversion?
      (lambda (_%obj29000%_)
        (##structure-ref _%obj29000%_ '6 readenv::t 'case-conversion?)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-labels
      (lambda (_%obj28998%_)
        (##structure-ref _%obj28998%_ '7 readenv::t 'labels)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-container
      (lambda (_%obj28996%_)
        (##structure-ref _%obj28996%_ '8 readenv::t 'container)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-filepos
      (lambda (_%obj28994%_)
        (##structure-ref _%obj28994%_ '9 readenv::t 'filepos)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-read-cont
      (lambda (_%obj28992%_)
        (##structure-ref _%obj28992%_ '10 readenv::t 'read-cont)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-port-set!
      (lambda (_%obj28989%_ _%val28990%_)
        (##structure-set! _%obj28989%_ _%val28990%_ '1 readenv::t 'port)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-readtable-set!
      (lambda (_%obj28986%_ _%val28987%_)
        (##structure-set! _%obj28986%_ _%val28987%_ '2 readenv::t 'readtable)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-wrapper-set!
      (lambda (_%obj28983%_ _%val28984%_)
        (##structure-set! _%obj28983%_ _%val28984%_ '3 readenv::t 'wrapper)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-unwrapper-set!
      (lambda (_%obj28980%_ _%val28981%_)
        (##structure-set! _%obj28980%_ _%val28981%_ '4 readenv::t 'unwrapper)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-script-line-set!
      (lambda (_%obj28977%_ _%val28978%_)
        (##structure-set!
         _%obj28977%_
         _%val28978%_
         '5
         readenv::t
         'script-line)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-case-conversion?-set!
      (lambda (_%obj28974%_ _%val28975%_)
        (##structure-set!
         _%obj28974%_
         _%val28975%_
         '6
         readenv::t
         'case-conversion?)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-labels-set!
      (lambda (_%obj28971%_ _%val28972%_)
        (##structure-set! _%obj28971%_ _%val28972%_ '7 readenv::t 'labels)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-container-set!
      (lambda (_%obj28968%_ _%val28969%_)
        (##structure-set! _%obj28968%_ _%val28969%_ '8 readenv::t 'container)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-filepos-set!
      (lambda (_%obj28965%_ _%val28966%_)
        (##structure-set! _%obj28965%_ _%val28966%_ '9 readenv::t 'filepos)))
    (define gerbil/core/mop~MOP-system-classes#::readenv-read-cont-set!
      (lambda (_%obj28960%_ _%val28962%_)
        (##structure-set!
         _%obj28960%_
         _%val28962%_
         '10
         readenv::t
         'read-cont)))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-style
      (lambda (_%obj28958%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28958%_ '1 writeenv::t 'style))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-port
      (lambda (_%obj28956%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28956%_ '2 writeenv::t 'port))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-readtable
      (lambda (_%obj28954%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28954%_ '3 writeenv::t 'readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-marktable
      (lambda (_%obj28952%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28952%_ '4 writeenv::t 'marktable))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-force?
      (lambda (_%obj28950%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28950%_ '5 writeenv::t 'force?))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-width
      (lambda (_%obj28948%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28948%_ '6 writeenv::t 'width))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-shift
      (lambda (_%obj28946%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28946%_ '7 writeenv::t 'shift))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-close-parens
      (lambda (_%obj28944%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28944%_
           '8
           writeenv::t
           'close-parens))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-level
      (lambda (_%obj28942%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28942%_ '9 writeenv::t 'level))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-limit
      (lambda (_%obj28940%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28940%_ '10 writeenv::t 'limit))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-max-unescaped-char
      (lambda (_%obj28938%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28938%_
           '11
           writeenv::t
           'max-unescaped-char))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-style-set!
      (lambda (_%obj28935%_ _%val28936%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28935%_
           _%val28936%_
           '1
           writeenv::t
           'style))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-port-set!
      (lambda (_%obj28932%_ _%val28933%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28932%_
           _%val28933%_
           '2
           writeenv::t
           'port))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-readtable-set!
      (lambda (_%obj28929%_ _%val28930%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28929%_
           _%val28930%_
           '3
           writeenv::t
           'readtable))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-marktable-set!
      (lambda (_%obj28926%_ _%val28927%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28926%_
           _%val28927%_
           '4
           writeenv::t
           'marktable))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-force?-set!
      (lambda (_%obj28923%_ _%val28924%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28923%_
           _%val28924%_
           '5
           writeenv::t
           'force?))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-width-set!
      (lambda (_%obj28920%_ _%val28921%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28920%_
           _%val28921%_
           '6
           writeenv::t
           'width))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-shift-set!
      (lambda (_%obj28917%_ _%val28918%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28917%_
           _%val28918%_
           '7
           writeenv::t
           'shift))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-close-parens-set!
      (lambda (_%obj28914%_ _%val28915%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28914%_
           _%val28915%_
           '8
           writeenv::t
           'close-parens))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-level-set!
      (lambda (_%obj28911%_ _%val28912%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28911%_
           _%val28912%_
           '9
           writeenv::t
           'level))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-limit-set!
      (lambda (_%obj28908%_ _%val28909%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28908%_
           _%val28909%_
           '10
           writeenv::t
           'limit))))
    (define gerbil/core/mop~MOP-system-classes#&::writeenv-max-unescaped-char-set!
      (lambda (_%obj28905%_ _%val28906%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28905%_
           _%val28906%_
           '11
           writeenv::t
           'max-unescaped-char))))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-style
      (lambda (_%obj28903%_)
        (##structure-ref _%obj28903%_ '1 writeenv::t 'style)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-port
      (lambda (_%obj28901%_)
        (##structure-ref _%obj28901%_ '2 writeenv::t 'port)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-readtable
      (lambda (_%obj28899%_)
        (##structure-ref _%obj28899%_ '3 writeenv::t 'readtable)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-marktable
      (lambda (_%obj28897%_)
        (##structure-ref _%obj28897%_ '4 writeenv::t 'marktable)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-force?
      (lambda (_%obj28895%_)
        (##structure-ref _%obj28895%_ '5 writeenv::t 'force?)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-width
      (lambda (_%obj28893%_)
        (##structure-ref _%obj28893%_ '6 writeenv::t 'width)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-shift
      (lambda (_%obj28891%_)
        (##structure-ref _%obj28891%_ '7 writeenv::t 'shift)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-close-parens
      (lambda (_%obj28889%_)
        (##structure-ref _%obj28889%_ '8 writeenv::t 'close-parens)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-level
      (lambda (_%obj28887%_)
        (##structure-ref _%obj28887%_ '9 writeenv::t 'level)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-limit
      (lambda (_%obj28885%_)
        (##structure-ref _%obj28885%_ '10 writeenv::t 'limit)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-max-unescaped-char
      (lambda (_%obj28883%_)
        (##structure-ref _%obj28883%_ '11 writeenv::t 'max-unescaped-char)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-style-set!
      (lambda (_%obj28880%_ _%val28881%_)
        (##structure-set! _%obj28880%_ _%val28881%_ '1 writeenv::t 'style)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-port-set!
      (lambda (_%obj28877%_ _%val28878%_)
        (##structure-set! _%obj28877%_ _%val28878%_ '2 writeenv::t 'port)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-readtable-set!
      (lambda (_%obj28874%_ _%val28875%_)
        (##structure-set!
         _%obj28874%_
         _%val28875%_
         '3
         writeenv::t
         'readtable)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-marktable-set!
      (lambda (_%obj28871%_ _%val28872%_)
        (##structure-set!
         _%obj28871%_
         _%val28872%_
         '4
         writeenv::t
         'marktable)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-force?-set!
      (lambda (_%obj28868%_ _%val28869%_)
        (##structure-set! _%obj28868%_ _%val28869%_ '5 writeenv::t 'force?)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-width-set!
      (lambda (_%obj28865%_ _%val28866%_)
        (##structure-set! _%obj28865%_ _%val28866%_ '6 writeenv::t 'width)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-shift-set!
      (lambda (_%obj28862%_ _%val28863%_)
        (##structure-set! _%obj28862%_ _%val28863%_ '7 writeenv::t 'shift)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-close-parens-set!
      (lambda (_%obj28859%_ _%val28860%_)
        (##structure-set!
         _%obj28859%_
         _%val28860%_
         '8
         writeenv::t
         'close-parens)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-level-set!
      (lambda (_%obj28856%_ _%val28857%_)
        (##structure-set! _%obj28856%_ _%val28857%_ '9 writeenv::t 'level)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-limit-set!
      (lambda (_%obj28853%_ _%val28854%_)
        (##structure-set! _%obj28853%_ _%val28854%_ '10 writeenv::t 'limit)))
    (define gerbil/core/mop~MOP-system-classes#::writeenv-max-unescaped-char-set!
      (lambda (_%obj28848%_ _%val28850%_)
        (##structure-set!
         _%obj28848%_
         _%val28850%_
         '11
         writeenv::t
         'max-unescaped-char)))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-case-conversion?
      (lambda (_%obj28846%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28846%_
           '1
           readtable::t
           'case-conversion?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-keywords-allowed?
      (lambda (_%obj28844%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28844%_
           '2
           readtable::t
           'keywords-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-escaped-char-table
      (lambda (_%obj28842%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28842%_
           '3
           readtable::t
           'escaped-char-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-named-char-table
      (lambda (_%obj28840%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28840%_
           '4
           readtable::t
           'named-char-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-bang-table
      (lambda (_%obj28838%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28838%_
           '5
           readtable::t
           'sharp-bang-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-char-delimiter?-table
      (lambda (_%obj28836%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28836%_
           '6
           readtable::t
           'char-delimiter?-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-char-handler-table
      (lambda (_%obj28834%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28834%_
           '7
           readtable::t
           'char-handler-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-char-sharp-handler-table
      (lambda (_%obj28832%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28832%_
           '8
           readtable::t
           'char-sharp-handler-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-max-unescaped-char
      (lambda (_%obj28830%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28830%_
           '9
           readtable::t
           'max-unescaped-char))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-escape-ctrl-chars?
      (lambda (_%obj28828%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28828%_
           '10
           readtable::t
           'escape-ctrl-chars?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharing-allowed?
      (lambda (_%obj28826%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28826%_
           '11
           readtable::t
           'sharing-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-eval-allowed?
      (lambda (_%obj28824%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28824%_
           '12
           readtable::t
           'eval-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-write-extended-read-macros?
      (lambda (_%obj28822%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28822%_
           '13
           readtable::t
           'write-extended-read-macros?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-write-cdr-read-macros?
      (lambda (_%obj28820%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28820%_
           '14
           readtable::t
           'write-cdr-read-macros?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-max-write-level
      (lambda (_%obj28818%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28818%_
           '15
           readtable::t
           'max-write-level))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-max-write-length
      (lambda (_%obj28816%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28816%_
           '16
           readtable::t
           'max-write-length))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-pretty-print-formats
      (lambda (_%obj28814%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28814%_
           '17
           readtable::t
           'pretty-print-formats))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-quote-keyword
      (lambda (_%obj28812%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28812%_
           '18
           readtable::t
           'quote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-quasiquote-keyword
      (lambda (_%obj28810%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28810%_
           '19
           readtable::t
           'quasiquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-unquote-keyword
      (lambda (_%obj28808%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28808%_
           '20
           readtable::t
           'unquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-unquote-splicing-keyword
      (lambda (_%obj28806%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28806%_
           '21
           readtable::t
           'unquote-splicing-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-quote-keyword
      (lambda (_%obj28804%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28804%_
           '22
           readtable::t
           'sharp-quote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-quasiquote-keyword
      (lambda (_%obj28802%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28802%_
           '23
           readtable::t
           'sharp-quasiquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-unquote-keyword
      (lambda (_%obj28800%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28800%_
           '24
           readtable::t
           'sharp-unquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-unquote-splicing-keyword
      (lambda (_%obj28798%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28798%_
           '25
           readtable::t
           'sharp-unquote-splicing-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-num-keyword
      (lambda (_%obj28796%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28796%_
           '26
           readtable::t
           'sharp-num-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-seq-keyword
      (lambda (_%obj28794%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28794%_
           '27
           readtable::t
           'sharp-seq-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-paren-handler
      (lambda (_%obj28792%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28792%_
           '28
           readtable::t
           'paren-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-bracket-handler
      (lambda (_%obj28790%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28790%_
           '29
           readtable::t
           'bracket-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-brace-handler
      (lambda (_%obj28788%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28788%_
           '30
           readtable::t
           'brace-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-angle-handler
      (lambda (_%obj28786%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28786%_
           '31
           readtable::t
           'angle-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-start-syntax
      (lambda (_%obj28784%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28784%_
           '32
           readtable::t
           'start-syntax))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-six-type?
      (lambda (_%obj28782%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28782%_
           '33
           readtable::t
           'six-type?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r6rs-compatible-read?
      (lambda (_%obj28780%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28780%_
           '34
           readtable::t
           'r6rs-compatible-read?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r6rs-compatible-write?
      (lambda (_%obj28778%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28778%_
           '35
           readtable::t
           'r6rs-compatible-write?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r7rs-compatible-read?
      (lambda (_%obj28776%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28776%_
           '36
           readtable::t
           'r7rs-compatible-read?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r7rs-compatible-write?
      (lambda (_%obj28774%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28774%_
           '37
           readtable::t
           'r7rs-compatible-write?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-here-strings-allowed?
      (lambda (_%obj28772%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28772%_
           '38
           readtable::t
           'here-strings-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-dot-at-head-of-list-allowed?
      (lambda (_%obj28770%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28770%_
           '39
           readtable::t
           'dot-at-head-of-list-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-comment-handler
      (lambda (_%obj28768%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28768%_
           '40
           readtable::t
           'comment-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-foreign-write-handler-table
      (lambda (_%obj28766%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28766%_
           '41
           readtable::t
           'foreign-write-handler-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-case-conversion?-set!
      (lambda (_%obj28763%_ _%val28764%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28763%_
           _%val28764%_
           '1
           readtable::t
           'case-conversion?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-keywords-allowed?-set!
      (lambda (_%obj28760%_ _%val28761%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28760%_
           _%val28761%_
           '2
           readtable::t
           'keywords-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-escaped-char-table-set!
      (lambda (_%obj28757%_ _%val28758%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28757%_
           _%val28758%_
           '3
           readtable::t
           'escaped-char-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-named-char-table-set!
      (lambda (_%obj28754%_ _%val28755%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28754%_
           _%val28755%_
           '4
           readtable::t
           'named-char-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-bang-table-set!
      (lambda (_%obj28751%_ _%val28752%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28751%_
           _%val28752%_
           '5
           readtable::t
           'sharp-bang-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-char-delimiter?-table-set!
      (lambda (_%obj28748%_ _%val28749%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28748%_
           _%val28749%_
           '6
           readtable::t
           'char-delimiter?-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-char-handler-table-set!
      (lambda (_%obj28745%_ _%val28746%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28745%_
           _%val28746%_
           '7
           readtable::t
           'char-handler-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-char-sharp-handler-table-set!
      (lambda (_%obj28742%_ _%val28743%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28742%_
           _%val28743%_
           '8
           readtable::t
           'char-sharp-handler-table))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-max-unescaped-char-set!
      (lambda (_%obj28739%_ _%val28740%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28739%_
           _%val28740%_
           '9
           readtable::t
           'max-unescaped-char))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-escape-ctrl-chars?-set!
      (lambda (_%obj28736%_ _%val28737%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28736%_
           _%val28737%_
           '10
           readtable::t
           'escape-ctrl-chars?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharing-allowed?-set!
      (lambda (_%obj28733%_ _%val28734%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28733%_
           _%val28734%_
           '11
           readtable::t
           'sharing-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-eval-allowed?-set!
      (lambda (_%obj28730%_ _%val28731%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28730%_
           _%val28731%_
           '12
           readtable::t
           'eval-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-write-extended-read-macros?-set!
      (lambda (_%obj28727%_ _%val28728%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28727%_
           _%val28728%_
           '13
           readtable::t
           'write-extended-read-macros?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-write-cdr-read-macros?-set!
      (lambda (_%obj28724%_ _%val28725%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28724%_
           _%val28725%_
           '14
           readtable::t
           'write-cdr-read-macros?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-max-write-level-set!
      (lambda (_%obj28721%_ _%val28722%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28721%_
           _%val28722%_
           '15
           readtable::t
           'max-write-level))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-max-write-length-set!
      (lambda (_%obj28718%_ _%val28719%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28718%_
           _%val28719%_
           '16
           readtable::t
           'max-write-length))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-pretty-print-formats-set!
      (lambda (_%obj28715%_ _%val28716%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28715%_
           _%val28716%_
           '17
           readtable::t
           'pretty-print-formats))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-quote-keyword-set!
      (lambda (_%obj28712%_ _%val28713%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28712%_
           _%val28713%_
           '18
           readtable::t
           'quote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-quasiquote-keyword-set!
      (lambda (_%obj28709%_ _%val28710%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28709%_
           _%val28710%_
           '19
           readtable::t
           'quasiquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-unquote-keyword-set!
      (lambda (_%obj28706%_ _%val28707%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28706%_
           _%val28707%_
           '20
           readtable::t
           'unquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-unquote-splicing-keyword-set!
      (lambda (_%obj28703%_ _%val28704%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28703%_
           _%val28704%_
           '21
           readtable::t
           'unquote-splicing-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-quote-keyword-set!
      (lambda (_%obj28700%_ _%val28701%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28700%_
           _%val28701%_
           '22
           readtable::t
           'sharp-quote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-quasiquote-keyword-set!
      (lambda (_%obj28697%_ _%val28698%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28697%_
           _%val28698%_
           '23
           readtable::t
           'sharp-quasiquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-unquote-keyword-set!
      (lambda (_%obj28694%_ _%val28695%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28694%_
           _%val28695%_
           '24
           readtable::t
           'sharp-unquote-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-unquote-splicing-keyword-set!
      (lambda (_%obj28691%_ _%val28692%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28691%_
           _%val28692%_
           '25
           readtable::t
           'sharp-unquote-splicing-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-num-keyword-set!
      (lambda (_%obj28688%_ _%val28689%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28688%_
           _%val28689%_
           '26
           readtable::t
           'sharp-num-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-sharp-seq-keyword-set!
      (lambda (_%obj28685%_ _%val28686%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28685%_
           _%val28686%_
           '27
           readtable::t
           'sharp-seq-keyword))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-paren-handler-set!
      (lambda (_%obj28682%_ _%val28683%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28682%_
           _%val28683%_
           '28
           readtable::t
           'paren-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-bracket-handler-set!
      (lambda (_%obj28679%_ _%val28680%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28679%_
           _%val28680%_
           '29
           readtable::t
           'bracket-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-brace-handler-set!
      (lambda (_%obj28676%_ _%val28677%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28676%_
           _%val28677%_
           '30
           readtable::t
           'brace-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-angle-handler-set!
      (lambda (_%obj28673%_ _%val28674%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28673%_
           _%val28674%_
           '31
           readtable::t
           'angle-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-start-syntax-set!
      (lambda (_%obj28670%_ _%val28671%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28670%_
           _%val28671%_
           '32
           readtable::t
           'start-syntax))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-six-type?-set!
      (lambda (_%obj28667%_ _%val28668%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28667%_
           _%val28668%_
           '33
           readtable::t
           'six-type?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r6rs-compatible-read?-set!
      (lambda (_%obj28664%_ _%val28665%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28664%_
           _%val28665%_
           '34
           readtable::t
           'r6rs-compatible-read?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r6rs-compatible-write?-set!
      (lambda (_%obj28661%_ _%val28662%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28661%_
           _%val28662%_
           '35
           readtable::t
           'r6rs-compatible-write?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r7rs-compatible-read?-set!
      (lambda (_%obj28658%_ _%val28659%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28658%_
           _%val28659%_
           '36
           readtable::t
           'r7rs-compatible-read?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-r7rs-compatible-write?-set!
      (lambda (_%obj28655%_ _%val28656%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28655%_
           _%val28656%_
           '37
           readtable::t
           'r7rs-compatible-write?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-here-strings-allowed?-set!
      (lambda (_%obj28652%_ _%val28653%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28652%_
           _%val28653%_
           '38
           readtable::t
           'here-strings-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-dot-at-head-of-list-allowed?-set!
      (lambda (_%obj28649%_ _%val28650%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28649%_
           _%val28650%_
           '39
           readtable::t
           'dot-at-head-of-list-allowed?))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-comment-handler-set!
      (lambda (_%obj28646%_ _%val28647%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28646%_
           _%val28647%_
           '40
           readtable::t
           'comment-handler))))
    (define gerbil/core/mop~MOP-system-classes#&::readtable-foreign-write-handler-table-set!
      (lambda (_%obj28643%_ _%val28644%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28643%_
           _%val28644%_
           '41
           readtable::t
           'foreign-write-handler-table))))
    (define gerbil/core/mop~MOP-system-classes#::readtable-case-conversion?
      (lambda (_%obj28641%_)
        (##structure-ref _%obj28641%_ '1 readtable::t 'case-conversion?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-keywords-allowed?
      (lambda (_%obj28639%_)
        (##structure-ref _%obj28639%_ '2 readtable::t 'keywords-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-escaped-char-table
      (lambda (_%obj28637%_)
        (##structure-ref _%obj28637%_ '3 readtable::t 'escaped-char-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-named-char-table
      (lambda (_%obj28635%_)
        (##structure-ref _%obj28635%_ '4 readtable::t 'named-char-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-bang-table
      (lambda (_%obj28633%_)
        (##structure-ref _%obj28633%_ '5 readtable::t 'sharp-bang-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-char-delimiter?-table
      (lambda (_%obj28631%_)
        (##structure-ref _%obj28631%_ '6 readtable::t 'char-delimiter?-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-char-handler-table
      (lambda (_%obj28629%_)
        (##structure-ref _%obj28629%_ '7 readtable::t 'char-handler-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-char-sharp-handler-table
      (lambda (_%obj28627%_)
        (##structure-ref
         _%obj28627%_
         '8
         readtable::t
         'char-sharp-handler-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-max-unescaped-char
      (lambda (_%obj28625%_)
        (##structure-ref _%obj28625%_ '9 readtable::t 'max-unescaped-char)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-escape-ctrl-chars?
      (lambda (_%obj28623%_)
        (##structure-ref _%obj28623%_ '10 readtable::t 'escape-ctrl-chars?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharing-allowed?
      (lambda (_%obj28621%_)
        (##structure-ref _%obj28621%_ '11 readtable::t 'sharing-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-eval-allowed?
      (lambda (_%obj28619%_)
        (##structure-ref _%obj28619%_ '12 readtable::t 'eval-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-write-extended-read-macros?
      (lambda (_%obj28617%_)
        (##structure-ref
         _%obj28617%_
         '13
         readtable::t
         'write-extended-read-macros?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-write-cdr-read-macros?
      (lambda (_%obj28615%_)
        (##structure-ref
         _%obj28615%_
         '14
         readtable::t
         'write-cdr-read-macros?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-max-write-level
      (lambda (_%obj28613%_)
        (##structure-ref _%obj28613%_ '15 readtable::t 'max-write-level)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-max-write-length
      (lambda (_%obj28611%_)
        (##structure-ref _%obj28611%_ '16 readtable::t 'max-write-length)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-pretty-print-formats
      (lambda (_%obj28609%_)
        (##structure-ref _%obj28609%_ '17 readtable::t 'pretty-print-formats)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-quote-keyword
      (lambda (_%obj28607%_)
        (##structure-ref _%obj28607%_ '18 readtable::t 'quote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-quasiquote-keyword
      (lambda (_%obj28605%_)
        (##structure-ref _%obj28605%_ '19 readtable::t 'quasiquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-unquote-keyword
      (lambda (_%obj28603%_)
        (##structure-ref _%obj28603%_ '20 readtable::t 'unquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-unquote-splicing-keyword
      (lambda (_%obj28601%_)
        (##structure-ref
         _%obj28601%_
         '21
         readtable::t
         'unquote-splicing-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-quote-keyword
      (lambda (_%obj28599%_)
        (##structure-ref _%obj28599%_ '22 readtable::t 'sharp-quote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-quasiquote-keyword
      (lambda (_%obj28597%_)
        (##structure-ref
         _%obj28597%_
         '23
         readtable::t
         'sharp-quasiquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-unquote-keyword
      (lambda (_%obj28595%_)
        (##structure-ref
         _%obj28595%_
         '24
         readtable::t
         'sharp-unquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-unquote-splicing-keyword
      (lambda (_%obj28593%_)
        (##structure-ref
         _%obj28593%_
         '25
         readtable::t
         'sharp-unquote-splicing-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-num-keyword
      (lambda (_%obj28591%_)
        (##structure-ref _%obj28591%_ '26 readtable::t 'sharp-num-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-seq-keyword
      (lambda (_%obj28589%_)
        (##structure-ref _%obj28589%_ '27 readtable::t 'sharp-seq-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-paren-handler
      (lambda (_%obj28587%_)
        (##structure-ref _%obj28587%_ '28 readtable::t 'paren-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-bracket-handler
      (lambda (_%obj28585%_)
        (##structure-ref _%obj28585%_ '29 readtable::t 'bracket-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-brace-handler
      (lambda (_%obj28583%_)
        (##structure-ref _%obj28583%_ '30 readtable::t 'brace-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-angle-handler
      (lambda (_%obj28581%_)
        (##structure-ref _%obj28581%_ '31 readtable::t 'angle-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-start-syntax
      (lambda (_%obj28579%_)
        (##structure-ref _%obj28579%_ '32 readtable::t 'start-syntax)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-six-type?
      (lambda (_%obj28577%_)
        (##structure-ref _%obj28577%_ '33 readtable::t 'six-type?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r6rs-compatible-read?
      (lambda (_%obj28575%_)
        (##structure-ref
         _%obj28575%_
         '34
         readtable::t
         'r6rs-compatible-read?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r6rs-compatible-write?
      (lambda (_%obj28573%_)
        (##structure-ref
         _%obj28573%_
         '35
         readtable::t
         'r6rs-compatible-write?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r7rs-compatible-read?
      (lambda (_%obj28571%_)
        (##structure-ref
         _%obj28571%_
         '36
         readtable::t
         'r7rs-compatible-read?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r7rs-compatible-write?
      (lambda (_%obj28569%_)
        (##structure-ref
         _%obj28569%_
         '37
         readtable::t
         'r7rs-compatible-write?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-here-strings-allowed?
      (lambda (_%obj28567%_)
        (##structure-ref
         _%obj28567%_
         '38
         readtable::t
         'here-strings-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-dot-at-head-of-list-allowed?
      (lambda (_%obj28565%_)
        (##structure-ref
         _%obj28565%_
         '39
         readtable::t
         'dot-at-head-of-list-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-comment-handler
      (lambda (_%obj28563%_)
        (##structure-ref _%obj28563%_ '40 readtable::t 'comment-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-foreign-write-handler-table
      (lambda (_%obj28561%_)
        (##structure-ref
         _%obj28561%_
         '41
         readtable::t
         'foreign-write-handler-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-case-conversion?-set!
      (lambda (_%obj28558%_ _%val28559%_)
        (##structure-set!
         _%obj28558%_
         _%val28559%_
         '1
         readtable::t
         'case-conversion?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-keywords-allowed?-set!
      (lambda (_%obj28555%_ _%val28556%_)
        (##structure-set!
         _%obj28555%_
         _%val28556%_
         '2
         readtable::t
         'keywords-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-escaped-char-table-set!
      (lambda (_%obj28552%_ _%val28553%_)
        (##structure-set!
         _%obj28552%_
         _%val28553%_
         '3
         readtable::t
         'escaped-char-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-named-char-table-set!
      (lambda (_%obj28549%_ _%val28550%_)
        (##structure-set!
         _%obj28549%_
         _%val28550%_
         '4
         readtable::t
         'named-char-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-bang-table-set!
      (lambda (_%obj28546%_ _%val28547%_)
        (##structure-set!
         _%obj28546%_
         _%val28547%_
         '5
         readtable::t
         'sharp-bang-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-char-delimiter?-table-set!
      (lambda (_%obj28543%_ _%val28544%_)
        (##structure-set!
         _%obj28543%_
         _%val28544%_
         '6
         readtable::t
         'char-delimiter?-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-char-handler-table-set!
      (lambda (_%obj28540%_ _%val28541%_)
        (##structure-set!
         _%obj28540%_
         _%val28541%_
         '7
         readtable::t
         'char-handler-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-char-sharp-handler-table-set!
      (lambda (_%obj28537%_ _%val28538%_)
        (##structure-set!
         _%obj28537%_
         _%val28538%_
         '8
         readtable::t
         'char-sharp-handler-table)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-max-unescaped-char-set!
      (lambda (_%obj28534%_ _%val28535%_)
        (##structure-set!
         _%obj28534%_
         _%val28535%_
         '9
         readtable::t
         'max-unescaped-char)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-escape-ctrl-chars?-set!
      (lambda (_%obj28531%_ _%val28532%_)
        (##structure-set!
         _%obj28531%_
         _%val28532%_
         '10
         readtable::t
         'escape-ctrl-chars?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharing-allowed?-set!
      (lambda (_%obj28528%_ _%val28529%_)
        (##structure-set!
         _%obj28528%_
         _%val28529%_
         '11
         readtable::t
         'sharing-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-eval-allowed?-set!
      (lambda (_%obj28525%_ _%val28526%_)
        (##structure-set!
         _%obj28525%_
         _%val28526%_
         '12
         readtable::t
         'eval-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-write-extended-read-macros?-set!
      (lambda (_%obj28522%_ _%val28523%_)
        (##structure-set!
         _%obj28522%_
         _%val28523%_
         '13
         readtable::t
         'write-extended-read-macros?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-write-cdr-read-macros?-set!
      (lambda (_%obj28519%_ _%val28520%_)
        (##structure-set!
         _%obj28519%_
         _%val28520%_
         '14
         readtable::t
         'write-cdr-read-macros?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-max-write-level-set!
      (lambda (_%obj28516%_ _%val28517%_)
        (##structure-set!
         _%obj28516%_
         _%val28517%_
         '15
         readtable::t
         'max-write-level)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-max-write-length-set!
      (lambda (_%obj28513%_ _%val28514%_)
        (##structure-set!
         _%obj28513%_
         _%val28514%_
         '16
         readtable::t
         'max-write-length)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-pretty-print-formats-set!
      (lambda (_%obj28510%_ _%val28511%_)
        (##structure-set!
         _%obj28510%_
         _%val28511%_
         '17
         readtable::t
         'pretty-print-formats)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-quote-keyword-set!
      (lambda (_%obj28507%_ _%val28508%_)
        (##structure-set!
         _%obj28507%_
         _%val28508%_
         '18
         readtable::t
         'quote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-quasiquote-keyword-set!
      (lambda (_%obj28504%_ _%val28505%_)
        (##structure-set!
         _%obj28504%_
         _%val28505%_
         '19
         readtable::t
         'quasiquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-unquote-keyword-set!
      (lambda (_%obj28501%_ _%val28502%_)
        (##structure-set!
         _%obj28501%_
         _%val28502%_
         '20
         readtable::t
         'unquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-unquote-splicing-keyword-set!
      (lambda (_%obj28498%_ _%val28499%_)
        (##structure-set!
         _%obj28498%_
         _%val28499%_
         '21
         readtable::t
         'unquote-splicing-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-quote-keyword-set!
      (lambda (_%obj28495%_ _%val28496%_)
        (##structure-set!
         _%obj28495%_
         _%val28496%_
         '22
         readtable::t
         'sharp-quote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-quasiquote-keyword-set!
      (lambda (_%obj28492%_ _%val28493%_)
        (##structure-set!
         _%obj28492%_
         _%val28493%_
         '23
         readtable::t
         'sharp-quasiquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-unquote-keyword-set!
      (lambda (_%obj28489%_ _%val28490%_)
        (##structure-set!
         _%obj28489%_
         _%val28490%_
         '24
         readtable::t
         'sharp-unquote-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-unquote-splicing-keyword-set!
      (lambda (_%obj28486%_ _%val28487%_)
        (##structure-set!
         _%obj28486%_
         _%val28487%_
         '25
         readtable::t
         'sharp-unquote-splicing-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-num-keyword-set!
      (lambda (_%obj28483%_ _%val28484%_)
        (##structure-set!
         _%obj28483%_
         _%val28484%_
         '26
         readtable::t
         'sharp-num-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-sharp-seq-keyword-set!
      (lambda (_%obj28480%_ _%val28481%_)
        (##structure-set!
         _%obj28480%_
         _%val28481%_
         '27
         readtable::t
         'sharp-seq-keyword)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-paren-handler-set!
      (lambda (_%obj28477%_ _%val28478%_)
        (##structure-set!
         _%obj28477%_
         _%val28478%_
         '28
         readtable::t
         'paren-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-bracket-handler-set!
      (lambda (_%obj28474%_ _%val28475%_)
        (##structure-set!
         _%obj28474%_
         _%val28475%_
         '29
         readtable::t
         'bracket-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-brace-handler-set!
      (lambda (_%obj28471%_ _%val28472%_)
        (##structure-set!
         _%obj28471%_
         _%val28472%_
         '30
         readtable::t
         'brace-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-angle-handler-set!
      (lambda (_%obj28468%_ _%val28469%_)
        (##structure-set!
         _%obj28468%_
         _%val28469%_
         '31
         readtable::t
         'angle-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-start-syntax-set!
      (lambda (_%obj28465%_ _%val28466%_)
        (##structure-set!
         _%obj28465%_
         _%val28466%_
         '32
         readtable::t
         'start-syntax)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-six-type?-set!
      (lambda (_%obj28462%_ _%val28463%_)
        (##structure-set!
         _%obj28462%_
         _%val28463%_
         '33
         readtable::t
         'six-type?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r6rs-compatible-read?-set!
      (lambda (_%obj28459%_ _%val28460%_)
        (##structure-set!
         _%obj28459%_
         _%val28460%_
         '34
         readtable::t
         'r6rs-compatible-read?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r6rs-compatible-write?-set!
      (lambda (_%obj28456%_ _%val28457%_)
        (##structure-set!
         _%obj28456%_
         _%val28457%_
         '35
         readtable::t
         'r6rs-compatible-write?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r7rs-compatible-read?-set!
      (lambda (_%obj28453%_ _%val28454%_)
        (##structure-set!
         _%obj28453%_
         _%val28454%_
         '36
         readtable::t
         'r7rs-compatible-read?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-r7rs-compatible-write?-set!
      (lambda (_%obj28450%_ _%val28451%_)
        (##structure-set!
         _%obj28450%_
         _%val28451%_
         '37
         readtable::t
         'r7rs-compatible-write?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-here-strings-allowed?-set!
      (lambda (_%obj28447%_ _%val28448%_)
        (##structure-set!
         _%obj28447%_
         _%val28448%_
         '38
         readtable::t
         'here-strings-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-dot-at-head-of-list-allowed?-set!
      (lambda (_%obj28444%_ _%val28445%_)
        (##structure-set!
         _%obj28444%_
         _%val28445%_
         '39
         readtable::t
         'dot-at-head-of-list-allowed?)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-comment-handler-set!
      (lambda (_%obj28441%_ _%val28442%_)
        (##structure-set!
         _%obj28441%_
         _%val28442%_
         '40
         readtable::t
         'comment-handler)))
    (define gerbil/core/mop~MOP-system-classes#::readtable-foreign-write-handler-table-set!
      (lambda (_%obj28436%_ _%val28438%_)
        (##structure-set!
         _%obj28436%_
         _%val28438%_
         '41
         readtable::t
         'foreign-write-handler-table)))
    (define gerbil/core/mop~MOP-system-classes#&::processor-lock1
      (lambda (_%obj28434%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28434%_ '1 processor::t 'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-condvar-deq-next
      (lambda (_%obj28432%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28432%_
           '2
           processor::t
           'condvar-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-condvar-deq-prev
      (lambda (_%obj28430%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28430%_
           '3
           processor::t
           'condvar-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-color
      (lambda (_%obj28428%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28428%_
           '4
           processor::t
           'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-parent
      (lambda (_%obj28426%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28426%_
           '5
           processor::t
           'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-left
      (lambda (_%obj28424%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28424%_ '6 processor::t 'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-leftmost
      (lambda (_%obj28422%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28422%_
           '7
           processor::t
           'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-false
      (lambda (_%obj28420%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28420%_ '8 processor::t 'false))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-lock2
      (lambda (_%obj28418%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28418%_ '9 processor::t 'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-color
      (lambda (_%obj28416%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28416%_
           '10
           processor::t
           'toq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-parent
      (lambda (_%obj28414%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28414%_
           '11
           processor::t
           'toq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-left
      (lambda (_%obj28412%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28412%_
           '12
           processor::t
           'toq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-leftmost
      (lambda (_%obj28410%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28410%_
           '13
           processor::t
           'toq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-current-thread
      (lambda (_%obj28408%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28408%_
           '14
           processor::t
           'current-thread))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-unused-field15
      (lambda (_%obj28406%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28406%_
           '15
           processor::t
           'unused-field15))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-floats
      (lambda (_%obj28404%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28404%_ '16 processor::t 'floats))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-processor-deq-next
      (lambda (_%obj28402%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28402%_
           '17
           processor::t
           'processor-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-processor-deq-prev
      (lambda (_%obj28400%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28400%_
           '18
           processor::t
           'processor-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-id
      (lambda (_%obj28398%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28398%_ '19 processor::t 'id))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-interrupts-head
      (lambda (_%obj28396%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28396%_
           '20
           processor::t
           'interrupts-head))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-interrupts-tail
      (lambda (_%obj28394%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28394%_
           '21
           processor::t
           'interrupts-tail))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-lock1-set!
      (lambda (_%obj28391%_ _%val28392%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28391%_
           _%val28392%_
           '1
           processor::t
           'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-condvar-deq-next-set!
      (lambda (_%obj28388%_ _%val28389%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28388%_
           _%val28389%_
           '2
           processor::t
           'condvar-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-condvar-deq-prev-set!
      (lambda (_%obj28385%_ _%val28386%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28385%_
           _%val28386%_
           '3
           processor::t
           'condvar-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-color-set!
      (lambda (_%obj28382%_ _%val28383%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28382%_
           _%val28383%_
           '4
           processor::t
           'btq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-parent-set!
      (lambda (_%obj28379%_ _%val28380%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28379%_
           _%val28380%_
           '5
           processor::t
           'btq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-left-set!
      (lambda (_%obj28376%_ _%val28377%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28376%_
           _%val28377%_
           '6
           processor::t
           'btq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-btq-leftmost-set!
      (lambda (_%obj28373%_ _%val28374%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28373%_
           _%val28374%_
           '7
           processor::t
           'btq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-false-set!
      (lambda (_%obj28370%_ _%val28371%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28370%_
           _%val28371%_
           '8
           processor::t
           'false))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-lock2-set!
      (lambda (_%obj28367%_ _%val28368%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28367%_
           _%val28368%_
           '9
           processor::t
           'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-color-set!
      (lambda (_%obj28364%_ _%val28365%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28364%_
           _%val28365%_
           '10
           processor::t
           'toq-color))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-parent-set!
      (lambda (_%obj28361%_ _%val28362%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28361%_
           _%val28362%_
           '11
           processor::t
           'toq-parent))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-left-set!
      (lambda (_%obj28358%_ _%val28359%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28358%_
           _%val28359%_
           '12
           processor::t
           'toq-left))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-toq-leftmost-set!
      (lambda (_%obj28355%_ _%val28356%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28355%_
           _%val28356%_
           '13
           processor::t
           'toq-leftmost))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-current-thread-set!
      (lambda (_%obj28352%_ _%val28353%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28352%_
           _%val28353%_
           '14
           processor::t
           'current-thread))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-unused-field15-set!
      (lambda (_%obj28349%_ _%val28350%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28349%_
           _%val28350%_
           '15
           processor::t
           'unused-field15))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-floats-set!
      (lambda (_%obj28346%_ _%val28347%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28346%_
           _%val28347%_
           '16
           processor::t
           'floats))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-processor-deq-next-set!
      (lambda (_%obj28343%_ _%val28344%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28343%_
           _%val28344%_
           '17
           processor::t
           'processor-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-processor-deq-prev-set!
      (lambda (_%obj28340%_ _%val28341%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28340%_
           _%val28341%_
           '18
           processor::t
           'processor-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-id-set!
      (lambda (_%obj28337%_ _%val28338%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28337%_
           _%val28338%_
           '19
           processor::t
           'id))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-interrupts-head-set!
      (lambda (_%obj28334%_ _%val28335%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28334%_
           _%val28335%_
           '20
           processor::t
           'interrupts-head))))
    (define gerbil/core/mop~MOP-system-classes#&::processor-interrupts-tail-set!
      (lambda (_%obj28331%_ _%val28332%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28331%_
           _%val28332%_
           '21
           processor::t
           'interrupts-tail))))
    (define gerbil/core/mop~MOP-system-classes#::processor-lock1
      (lambda (_%obj28329%_)
        (##structure-ref _%obj28329%_ '1 processor::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::processor-condvar-deq-next
      (lambda (_%obj28327%_)
        (##structure-ref _%obj28327%_ '2 processor::t 'condvar-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::processor-condvar-deq-prev
      (lambda (_%obj28325%_)
        (##structure-ref _%obj28325%_ '3 processor::t 'condvar-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-color
      (lambda (_%obj28323%_)
        (##structure-ref _%obj28323%_ '4 processor::t 'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-parent
      (lambda (_%obj28321%_)
        (##structure-ref _%obj28321%_ '5 processor::t 'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-left
      (lambda (_%obj28319%_)
        (##structure-ref _%obj28319%_ '6 processor::t 'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-leftmost
      (lambda (_%obj28317%_)
        (##structure-ref _%obj28317%_ '7 processor::t 'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::processor-false
      (lambda (_%obj28315%_)
        (##structure-ref _%obj28315%_ '8 processor::t 'false)))
    (define gerbil/core/mop~MOP-system-classes#::processor-lock2
      (lambda (_%obj28313%_)
        (##structure-ref _%obj28313%_ '9 processor::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-color
      (lambda (_%obj28311%_)
        (##structure-ref _%obj28311%_ '10 processor::t 'toq-color)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-parent
      (lambda (_%obj28309%_)
        (##structure-ref _%obj28309%_ '11 processor::t 'toq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-left
      (lambda (_%obj28307%_)
        (##structure-ref _%obj28307%_ '12 processor::t 'toq-left)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-leftmost
      (lambda (_%obj28305%_)
        (##structure-ref _%obj28305%_ '13 processor::t 'toq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::processor-current-thread
      (lambda (_%obj28303%_)
        (##structure-ref _%obj28303%_ '14 processor::t 'current-thread)))
    (define gerbil/core/mop~MOP-system-classes#::processor-unused-field15
      (lambda (_%obj28301%_)
        (##structure-ref _%obj28301%_ '15 processor::t 'unused-field15)))
    (define gerbil/core/mop~MOP-system-classes#::processor-floats
      (lambda (_%obj28299%_)
        (##structure-ref _%obj28299%_ '16 processor::t 'floats)))
    (define gerbil/core/mop~MOP-system-classes#::processor-processor-deq-next
      (lambda (_%obj28297%_)
        (##structure-ref _%obj28297%_ '17 processor::t 'processor-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::processor-processor-deq-prev
      (lambda (_%obj28295%_)
        (##structure-ref _%obj28295%_ '18 processor::t 'processor-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::processor-id
      (lambda (_%obj28293%_)
        (##structure-ref _%obj28293%_ '19 processor::t 'id)))
    (define gerbil/core/mop~MOP-system-classes#::processor-interrupts-head
      (lambda (_%obj28291%_)
        (##structure-ref _%obj28291%_ '20 processor::t 'interrupts-head)))
    (define gerbil/core/mop~MOP-system-classes#::processor-interrupts-tail
      (lambda (_%obj28289%_)
        (##structure-ref _%obj28289%_ '21 processor::t 'interrupts-tail)))
    (define gerbil/core/mop~MOP-system-classes#::processor-lock1-set!
      (lambda (_%obj28286%_ _%val28287%_)
        (##structure-set! _%obj28286%_ _%val28287%_ '1 processor::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::processor-condvar-deq-next-set!
      (lambda (_%obj28283%_ _%val28284%_)
        (##structure-set!
         _%obj28283%_
         _%val28284%_
         '2
         processor::t
         'condvar-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::processor-condvar-deq-prev-set!
      (lambda (_%obj28280%_ _%val28281%_)
        (##structure-set!
         _%obj28280%_
         _%val28281%_
         '3
         processor::t
         'condvar-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-color-set!
      (lambda (_%obj28277%_ _%val28278%_)
        (##structure-set!
         _%obj28277%_
         _%val28278%_
         '4
         processor::t
         'btq-color)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-parent-set!
      (lambda (_%obj28274%_ _%val28275%_)
        (##structure-set!
         _%obj28274%_
         _%val28275%_
         '5
         processor::t
         'btq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-left-set!
      (lambda (_%obj28271%_ _%val28272%_)
        (##structure-set!
         _%obj28271%_
         _%val28272%_
         '6
         processor::t
         'btq-left)))
    (define gerbil/core/mop~MOP-system-classes#::processor-btq-leftmost-set!
      (lambda (_%obj28268%_ _%val28269%_)
        (##structure-set!
         _%obj28268%_
         _%val28269%_
         '7
         processor::t
         'btq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::processor-false-set!
      (lambda (_%obj28265%_ _%val28266%_)
        (##structure-set! _%obj28265%_ _%val28266%_ '8 processor::t 'false)))
    (define gerbil/core/mop~MOP-system-classes#::processor-lock2-set!
      (lambda (_%obj28262%_ _%val28263%_)
        (##structure-set! _%obj28262%_ _%val28263%_ '9 processor::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-color-set!
      (lambda (_%obj28259%_ _%val28260%_)
        (##structure-set!
         _%obj28259%_
         _%val28260%_
         '10
         processor::t
         'toq-color)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-parent-set!
      (lambda (_%obj28256%_ _%val28257%_)
        (##structure-set!
         _%obj28256%_
         _%val28257%_
         '11
         processor::t
         'toq-parent)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-left-set!
      (lambda (_%obj28253%_ _%val28254%_)
        (##structure-set!
         _%obj28253%_
         _%val28254%_
         '12
         processor::t
         'toq-left)))
    (define gerbil/core/mop~MOP-system-classes#::processor-toq-leftmost-set!
      (lambda (_%obj28250%_ _%val28251%_)
        (##structure-set!
         _%obj28250%_
         _%val28251%_
         '13
         processor::t
         'toq-leftmost)))
    (define gerbil/core/mop~MOP-system-classes#::processor-current-thread-set!
      (lambda (_%obj28247%_ _%val28248%_)
        (##structure-set!
         _%obj28247%_
         _%val28248%_
         '14
         processor::t
         'current-thread)))
    (define gerbil/core/mop~MOP-system-classes#::processor-unused-field15-set!
      (lambda (_%obj28244%_ _%val28245%_)
        (##structure-set!
         _%obj28244%_
         _%val28245%_
         '15
         processor::t
         'unused-field15)))
    (define gerbil/core/mop~MOP-system-classes#::processor-floats-set!
      (lambda (_%obj28241%_ _%val28242%_)
        (##structure-set! _%obj28241%_ _%val28242%_ '16 processor::t 'floats)))
    (define gerbil/core/mop~MOP-system-classes#::processor-processor-deq-next-set!
      (lambda (_%obj28238%_ _%val28239%_)
        (##structure-set!
         _%obj28238%_
         _%val28239%_
         '17
         processor::t
         'processor-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::processor-processor-deq-prev-set!
      (lambda (_%obj28235%_ _%val28236%_)
        (##structure-set!
         _%obj28235%_
         _%val28236%_
         '18
         processor::t
         'processor-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::processor-id-set!
      (lambda (_%obj28232%_ _%val28233%_)
        (##structure-set! _%obj28232%_ _%val28233%_ '19 processor::t 'id)))
    (define gerbil/core/mop~MOP-system-classes#::processor-interrupts-head-set!
      (lambda (_%obj28229%_ _%val28230%_)
        (##structure-set!
         _%obj28229%_
         _%val28230%_
         '20
         processor::t
         'interrupts-head)))
    (define gerbil/core/mop~MOP-system-classes#::processor-interrupts-tail-set!
      (lambda (_%obj28224%_ _%val28226%_)
        (##structure-set!
         _%obj28224%_
         _%val28226%_
         '21
         processor::t
         'interrupts-tail)))
    (define gerbil/core/mop~MOP-system-classes#&::vm-lock1
      (lambda (_%obj28222%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28222%_ '1 vm::t 'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field2
      (lambda (_%obj28220%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28220%_ '2 vm::t 'unused-field2))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field3
      (lambda (_%obj28218%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28218%_ '3 vm::t 'unused-field3))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field4
      (lambda (_%obj28216%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28216%_ '4 vm::t 'unused-field4))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field5
      (lambda (_%obj28214%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28214%_ '5 vm::t 'unused-field5))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field6
      (lambda (_%obj28212%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28212%_ '6 vm::t 'unused-field6))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field7
      (lambda (_%obj28210%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28210%_ '7 vm::t 'unused-field7))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field8
      (lambda (_%obj28208%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28208%_ '8 vm::t 'unused-field8))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-lock2
      (lambda (_%obj28206%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28206%_ '9 vm::t 'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field10
      (lambda (_%obj28204%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28204%_ '10 vm::t 'unused-field10))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field11
      (lambda (_%obj28202%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28202%_ '11 vm::t 'unused-field11))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field12
      (lambda (_%obj28200%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28200%_ '12 vm::t 'unused-field12))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field13
      (lambda (_%obj28198%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28198%_ '13 vm::t 'unused-field13))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field14
      (lambda (_%obj28196%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28196%_ '14 vm::t 'unused-field14))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field15
      (lambda (_%obj28194%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28194%_ '15 vm::t 'unused-field15))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field16
      (lambda (_%obj28192%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28192%_ '16 vm::t 'unused-field16))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-processor-deq-next
      (lambda (_%obj28190%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28190%_
           '17
           vm::t
           'processor-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-processor-deq-prev
      (lambda (_%obj28188%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28188%_
           '18
           vm::t
           'processor-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-idle-processor-count
      (lambda (_%obj28186%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28186%_
           '19
           vm::t
           'idle-processor-count))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-lock1-set!
      (lambda (_%obj28183%_ _%val28184%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28183%_
           _%val28184%_
           '1
           vm::t
           'lock1))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field2-set!
      (lambda (_%obj28180%_ _%val28181%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28180%_
           _%val28181%_
           '2
           vm::t
           'unused-field2))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field3-set!
      (lambda (_%obj28177%_ _%val28178%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28177%_
           _%val28178%_
           '3
           vm::t
           'unused-field3))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field4-set!
      (lambda (_%obj28174%_ _%val28175%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28174%_
           _%val28175%_
           '4
           vm::t
           'unused-field4))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field5-set!
      (lambda (_%obj28171%_ _%val28172%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28171%_
           _%val28172%_
           '5
           vm::t
           'unused-field5))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field6-set!
      (lambda (_%obj28168%_ _%val28169%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28168%_
           _%val28169%_
           '6
           vm::t
           'unused-field6))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field7-set!
      (lambda (_%obj28165%_ _%val28166%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28165%_
           _%val28166%_
           '7
           vm::t
           'unused-field7))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field8-set!
      (lambda (_%obj28162%_ _%val28163%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28162%_
           _%val28163%_
           '8
           vm::t
           'unused-field8))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-lock2-set!
      (lambda (_%obj28159%_ _%val28160%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28159%_
           _%val28160%_
           '9
           vm::t
           'lock2))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field10-set!
      (lambda (_%obj28156%_ _%val28157%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28156%_
           _%val28157%_
           '10
           vm::t
           'unused-field10))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field11-set!
      (lambda (_%obj28153%_ _%val28154%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28153%_
           _%val28154%_
           '11
           vm::t
           'unused-field11))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field12-set!
      (lambda (_%obj28150%_ _%val28151%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28150%_
           _%val28151%_
           '12
           vm::t
           'unused-field12))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field13-set!
      (lambda (_%obj28147%_ _%val28148%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28147%_
           _%val28148%_
           '13
           vm::t
           'unused-field13))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field14-set!
      (lambda (_%obj28144%_ _%val28145%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28144%_
           _%val28145%_
           '14
           vm::t
           'unused-field14))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field15-set!
      (lambda (_%obj28141%_ _%val28142%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28141%_
           _%val28142%_
           '15
           vm::t
           'unused-field15))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-unused-field16-set!
      (lambda (_%obj28138%_ _%val28139%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28138%_
           _%val28139%_
           '16
           vm::t
           'unused-field16))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-processor-deq-next-set!
      (lambda (_%obj28135%_ _%val28136%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28135%_
           _%val28136%_
           '17
           vm::t
           'processor-deq-next))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-processor-deq-prev-set!
      (lambda (_%obj28132%_ _%val28133%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28132%_
           _%val28133%_
           '18
           vm::t
           'processor-deq-prev))))
    (define gerbil/core/mop~MOP-system-classes#&::vm-idle-processor-count-set!
      (lambda (_%obj28129%_ _%val28130%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28129%_
           _%val28130%_
           '19
           vm::t
           'idle-processor-count))))
    (define gerbil/core/mop~MOP-system-classes#::vm-lock1
      (lambda (_%obj28127%_) (##structure-ref _%obj28127%_ '1 vm::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field2
      (lambda (_%obj28125%_)
        (##structure-ref _%obj28125%_ '2 vm::t 'unused-field2)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field3
      (lambda (_%obj28123%_)
        (##structure-ref _%obj28123%_ '3 vm::t 'unused-field3)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field4
      (lambda (_%obj28121%_)
        (##structure-ref _%obj28121%_ '4 vm::t 'unused-field4)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field5
      (lambda (_%obj28119%_)
        (##structure-ref _%obj28119%_ '5 vm::t 'unused-field5)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field6
      (lambda (_%obj28117%_)
        (##structure-ref _%obj28117%_ '6 vm::t 'unused-field6)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field7
      (lambda (_%obj28115%_)
        (##structure-ref _%obj28115%_ '7 vm::t 'unused-field7)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field8
      (lambda (_%obj28113%_)
        (##structure-ref _%obj28113%_ '8 vm::t 'unused-field8)))
    (define gerbil/core/mop~MOP-system-classes#::vm-lock2
      (lambda (_%obj28111%_) (##structure-ref _%obj28111%_ '9 vm::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field10
      (lambda (_%obj28109%_)
        (##structure-ref _%obj28109%_ '10 vm::t 'unused-field10)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field11
      (lambda (_%obj28107%_)
        (##structure-ref _%obj28107%_ '11 vm::t 'unused-field11)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field12
      (lambda (_%obj28105%_)
        (##structure-ref _%obj28105%_ '12 vm::t 'unused-field12)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field13
      (lambda (_%obj28103%_)
        (##structure-ref _%obj28103%_ '13 vm::t 'unused-field13)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field14
      (lambda (_%obj28101%_)
        (##structure-ref _%obj28101%_ '14 vm::t 'unused-field14)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field15
      (lambda (_%obj28099%_)
        (##structure-ref _%obj28099%_ '15 vm::t 'unused-field15)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field16
      (lambda (_%obj28097%_)
        (##structure-ref _%obj28097%_ '16 vm::t 'unused-field16)))
    (define gerbil/core/mop~MOP-system-classes#::vm-processor-deq-next
      (lambda (_%obj28095%_)
        (##structure-ref _%obj28095%_ '17 vm::t 'processor-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::vm-processor-deq-prev
      (lambda (_%obj28093%_)
        (##structure-ref _%obj28093%_ '18 vm::t 'processor-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::vm-idle-processor-count
      (lambda (_%obj28091%_)
        (##structure-ref _%obj28091%_ '19 vm::t 'idle-processor-count)))
    (define gerbil/core/mop~MOP-system-classes#::vm-lock1-set!
      (lambda (_%obj28088%_ _%val28089%_)
        (##structure-set! _%obj28088%_ _%val28089%_ '1 vm::t 'lock1)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field2-set!
      (lambda (_%obj28085%_ _%val28086%_)
        (##structure-set! _%obj28085%_ _%val28086%_ '2 vm::t 'unused-field2)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field3-set!
      (lambda (_%obj28082%_ _%val28083%_)
        (##structure-set! _%obj28082%_ _%val28083%_ '3 vm::t 'unused-field3)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field4-set!
      (lambda (_%obj28079%_ _%val28080%_)
        (##structure-set! _%obj28079%_ _%val28080%_ '4 vm::t 'unused-field4)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field5-set!
      (lambda (_%obj28076%_ _%val28077%_)
        (##structure-set! _%obj28076%_ _%val28077%_ '5 vm::t 'unused-field5)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field6-set!
      (lambda (_%obj28073%_ _%val28074%_)
        (##structure-set! _%obj28073%_ _%val28074%_ '6 vm::t 'unused-field6)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field7-set!
      (lambda (_%obj28070%_ _%val28071%_)
        (##structure-set! _%obj28070%_ _%val28071%_ '7 vm::t 'unused-field7)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field8-set!
      (lambda (_%obj28067%_ _%val28068%_)
        (##structure-set! _%obj28067%_ _%val28068%_ '8 vm::t 'unused-field8)))
    (define gerbil/core/mop~MOP-system-classes#::vm-lock2-set!
      (lambda (_%obj28064%_ _%val28065%_)
        (##structure-set! _%obj28064%_ _%val28065%_ '9 vm::t 'lock2)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field10-set!
      (lambda (_%obj28061%_ _%val28062%_)
        (##structure-set!
         _%obj28061%_
         _%val28062%_
         '10
         vm::t
         'unused-field10)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field11-set!
      (lambda (_%obj28058%_ _%val28059%_)
        (##structure-set!
         _%obj28058%_
         _%val28059%_
         '11
         vm::t
         'unused-field11)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field12-set!
      (lambda (_%obj28055%_ _%val28056%_)
        (##structure-set!
         _%obj28055%_
         _%val28056%_
         '12
         vm::t
         'unused-field12)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field13-set!
      (lambda (_%obj28052%_ _%val28053%_)
        (##structure-set!
         _%obj28052%_
         _%val28053%_
         '13
         vm::t
         'unused-field13)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field14-set!
      (lambda (_%obj28049%_ _%val28050%_)
        (##structure-set!
         _%obj28049%_
         _%val28050%_
         '14
         vm::t
         'unused-field14)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field15-set!
      (lambda (_%obj28046%_ _%val28047%_)
        (##structure-set!
         _%obj28046%_
         _%val28047%_
         '15
         vm::t
         'unused-field15)))
    (define gerbil/core/mop~MOP-system-classes#::vm-unused-field16-set!
      (lambda (_%obj28043%_ _%val28044%_)
        (##structure-set!
         _%obj28043%_
         _%val28044%_
         '16
         vm::t
         'unused-field16)))
    (define gerbil/core/mop~MOP-system-classes#::vm-processor-deq-next-set!
      (lambda (_%obj28040%_ _%val28041%_)
        (##structure-set!
         _%obj28040%_
         _%val28041%_
         '17
         vm::t
         'processor-deq-next)))
    (define gerbil/core/mop~MOP-system-classes#::vm-processor-deq-prev-set!
      (lambda (_%obj28037%_ _%val28038%_)
        (##structure-set!
         _%obj28037%_
         _%val28038%_
         '18
         vm::t
         'processor-deq-prev)))
    (define gerbil/core/mop~MOP-system-classes#::vm-idle-processor-count-set!
      (lambda (_%obj28032%_ _%val28034%_)
        (##structure-set!
         _%obj28032%_
         _%val28034%_
         '19
         vm::t
         'idle-processor-count)))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-type
      (lambda (_%obj28030%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28030%_ '1 file-info::t 'type))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-device
      (lambda (_%obj28028%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28028%_ '2 file-info::t 'device))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-inode
      (lambda (_%obj28026%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28026%_ '3 file-info::t 'inode))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-mode
      (lambda (_%obj28024%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28024%_ '4 file-info::t 'mode))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-number-of-links
      (lambda (_%obj28022%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28022%_
           '5
           file-info::t
           'number-of-links))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-owner
      (lambda (_%obj28020%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28020%_ '6 file-info::t 'owner))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-group
      (lambda (_%obj28018%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28018%_ '7 file-info::t 'group))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-size
      (lambda (_%obj28016%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj28016%_ '8 file-info::t 'size))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-last-access-time
      (lambda (_%obj28014%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28014%_
           '9
           file-info::t
           'last-access-time))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-last-modification-time
      (lambda (_%obj28012%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28012%_
           '10
           file-info::t
           'last-modification-time))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-last-change-time
      (lambda (_%obj28010%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28010%_
           '11
           file-info::t
           'last-change-time))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-attributes
      (lambda (_%obj28008%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28008%_
           '12
           file-info::t
           'attributes))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-creation-time
      (lambda (_%obj28006%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj28006%_
           '13
           file-info::t
           'creation-time))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-type-set!
      (lambda (_%obj28003%_ _%val28004%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28003%_
           _%val28004%_
           '1
           file-info::t
           'type))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-device-set!
      (lambda (_%obj28000%_ _%val28001%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj28000%_
           _%val28001%_
           '2
           file-info::t
           'device))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-inode-set!
      (lambda (_%obj27997%_ _%val27998%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27997%_
           _%val27998%_
           '3
           file-info::t
           'inode))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-mode-set!
      (lambda (_%obj27994%_ _%val27995%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27994%_
           _%val27995%_
           '4
           file-info::t
           'mode))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-number-of-links-set!
      (lambda (_%obj27991%_ _%val27992%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27991%_
           _%val27992%_
           '5
           file-info::t
           'number-of-links))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-owner-set!
      (lambda (_%obj27988%_ _%val27989%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27988%_
           _%val27989%_
           '6
           file-info::t
           'owner))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-group-set!
      (lambda (_%obj27985%_ _%val27986%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27985%_
           _%val27986%_
           '7
           file-info::t
           'group))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-size-set!
      (lambda (_%obj27982%_ _%val27983%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27982%_
           _%val27983%_
           '8
           file-info::t
           'size))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-last-access-time-set!
      (lambda (_%obj27979%_ _%val27980%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27979%_
           _%val27980%_
           '9
           file-info::t
           'last-access-time))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-last-modification-time-set!
      (lambda (_%obj27976%_ _%val27977%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27976%_
           _%val27977%_
           '10
           file-info::t
           'last-modification-time))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-last-change-time-set!
      (lambda (_%obj27973%_ _%val27974%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27973%_
           _%val27974%_
           '11
           file-info::t
           'last-change-time))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-attributes-set!
      (lambda (_%obj27970%_ _%val27971%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27970%_
           _%val27971%_
           '12
           file-info::t
           'attributes))))
    (define gerbil/core/mop~MOP-system-classes#&::file-info-creation-time-set!
      (lambda (_%obj27967%_ _%val27968%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27967%_
           _%val27968%_
           '13
           file-info::t
           'creation-time))))
    (define gerbil/core/mop~MOP-system-classes#::file-info-type
      (lambda (_%obj27965%_)
        (##structure-ref _%obj27965%_ '1 file-info::t 'type)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-device
      (lambda (_%obj27963%_)
        (##structure-ref _%obj27963%_ '2 file-info::t 'device)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-inode
      (lambda (_%obj27961%_)
        (##structure-ref _%obj27961%_ '3 file-info::t 'inode)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-mode
      (lambda (_%obj27959%_)
        (##structure-ref _%obj27959%_ '4 file-info::t 'mode)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-number-of-links
      (lambda (_%obj27957%_)
        (##structure-ref _%obj27957%_ '5 file-info::t 'number-of-links)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-owner
      (lambda (_%obj27955%_)
        (##structure-ref _%obj27955%_ '6 file-info::t 'owner)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-group
      (lambda (_%obj27953%_)
        (##structure-ref _%obj27953%_ '7 file-info::t 'group)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-size
      (lambda (_%obj27951%_)
        (##structure-ref _%obj27951%_ '8 file-info::t 'size)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-last-access-time
      (lambda (_%obj27949%_)
        (##structure-ref _%obj27949%_ '9 file-info::t 'last-access-time)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-last-modification-time
      (lambda (_%obj27947%_)
        (##structure-ref
         _%obj27947%_
         '10
         file-info::t
         'last-modification-time)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-last-change-time
      (lambda (_%obj27945%_)
        (##structure-ref _%obj27945%_ '11 file-info::t 'last-change-time)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-attributes
      (lambda (_%obj27943%_)
        (##structure-ref _%obj27943%_ '12 file-info::t 'attributes)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-creation-time
      (lambda (_%obj27941%_)
        (##structure-ref _%obj27941%_ '13 file-info::t 'creation-time)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-type-set!
      (lambda (_%obj27938%_ _%val27939%_)
        (##structure-set! _%obj27938%_ _%val27939%_ '1 file-info::t 'type)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-device-set!
      (lambda (_%obj27935%_ _%val27936%_)
        (##structure-set! _%obj27935%_ _%val27936%_ '2 file-info::t 'device)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-inode-set!
      (lambda (_%obj27932%_ _%val27933%_)
        (##structure-set! _%obj27932%_ _%val27933%_ '3 file-info::t 'inode)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-mode-set!
      (lambda (_%obj27929%_ _%val27930%_)
        (##structure-set! _%obj27929%_ _%val27930%_ '4 file-info::t 'mode)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-number-of-links-set!
      (lambda (_%obj27926%_ _%val27927%_)
        (##structure-set!
         _%obj27926%_
         _%val27927%_
         '5
         file-info::t
         'number-of-links)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-owner-set!
      (lambda (_%obj27923%_ _%val27924%_)
        (##structure-set! _%obj27923%_ _%val27924%_ '6 file-info::t 'owner)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-group-set!
      (lambda (_%obj27920%_ _%val27921%_)
        (##structure-set! _%obj27920%_ _%val27921%_ '7 file-info::t 'group)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-size-set!
      (lambda (_%obj27917%_ _%val27918%_)
        (##structure-set! _%obj27917%_ _%val27918%_ '8 file-info::t 'size)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-last-access-time-set!
      (lambda (_%obj27914%_ _%val27915%_)
        (##structure-set!
         _%obj27914%_
         _%val27915%_
         '9
         file-info::t
         'last-access-time)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-last-modification-time-set!
      (lambda (_%obj27911%_ _%val27912%_)
        (##structure-set!
         _%obj27911%_
         _%val27912%_
         '10
         file-info::t
         'last-modification-time)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-last-change-time-set!
      (lambda (_%obj27908%_ _%val27909%_)
        (##structure-set!
         _%obj27908%_
         _%val27909%_
         '11
         file-info::t
         'last-change-time)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-attributes-set!
      (lambda (_%obj27905%_ _%val27906%_)
        (##structure-set!
         _%obj27905%_
         _%val27906%_
         '12
         file-info::t
         'attributes)))
    (define gerbil/core/mop~MOP-system-classes#::file-info-creation-time-set!
      (lambda (_%obj27900%_ _%val27902%_)
        (##structure-set!
         _%obj27900%_
         _%val27902%_
         '13
         file-info::t
         'creation-time)))
    (define gerbil/core/mop~MOP-system-classes#&::socket-info-family
      (lambda (_%obj27898%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj27898%_ '1 socket-info::t 'family))))
    (define gerbil/core/mop~MOP-system-classes#&::socket-info-port-number
      (lambda (_%obj27896%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj27896%_
           '2
           socket-info::t
           'port-number))))
    (define gerbil/core/mop~MOP-system-classes#&::socket-info-address
      (lambda (_%obj27894%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj27894%_
           '3
           socket-info::t
           'address))))
    (define gerbil/core/mop~MOP-system-classes#&::socket-info-family-set!
      (lambda (_%obj27891%_ _%val27892%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27891%_
           _%val27892%_
           '1
           socket-info::t
           'family))))
    (define gerbil/core/mop~MOP-system-classes#&::socket-info-port-number-set!
      (lambda (_%obj27888%_ _%val27889%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27888%_
           _%val27889%_
           '2
           socket-info::t
           'port-number))))
    (define gerbil/core/mop~MOP-system-classes#&::socket-info-address-set!
      (lambda (_%obj27885%_ _%val27886%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27885%_
           _%val27886%_
           '3
           socket-info::t
           'address))))
    (define gerbil/core/mop~MOP-system-classes#::socket-info-family
      (lambda (_%obj27883%_)
        (##structure-ref _%obj27883%_ '1 socket-info::t 'family)))
    (define gerbil/core/mop~MOP-system-classes#::socket-info-port-number
      (lambda (_%obj27881%_)
        (##structure-ref _%obj27881%_ '2 socket-info::t 'port-number)))
    (define gerbil/core/mop~MOP-system-classes#::socket-info-address
      (lambda (_%obj27879%_)
        (##structure-ref _%obj27879%_ '3 socket-info::t 'address)))
    (define gerbil/core/mop~MOP-system-classes#::socket-info-family-set!
      (lambda (_%obj27876%_ _%val27877%_)
        (##structure-set!
         _%obj27876%_
         _%val27877%_
         '1
         socket-info::t
         'family)))
    (define gerbil/core/mop~MOP-system-classes#::socket-info-port-number-set!
      (lambda (_%obj27873%_ _%val27874%_)
        (##structure-set!
         _%obj27873%_
         _%val27874%_
         '2
         socket-info::t
         'port-number)))
    (define gerbil/core/mop~MOP-system-classes#::socket-info-address-set!
      (lambda (_%obj27868%_ _%val27870%_)
        (##structure-set!
         _%obj27868%_
         _%val27870%_
         '3
         socket-info::t
         'address)))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-family
      (lambda (_%obj27866%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj27866%_
           '1
           address-info::t
           'family))))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-socket-type
      (lambda (_%obj27864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj27864%_
           '2
           address-info::t
           'socket-type))))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-protocol
      (lambda (_%obj27862%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj27862%_
           '3
           address-info::t
           'protocol))))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-socket-info
      (lambda (_%obj27860%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj27860%_
           '4
           address-info::t
           'socket-info))))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-family-set!
      (lambda (_%obj27857%_ _%val27858%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27857%_
           _%val27858%_
           '1
           address-info::t
           'family))))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-socket-type-set!
      (lambda (_%obj27854%_ _%val27855%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27854%_
           _%val27855%_
           '2
           address-info::t
           'socket-type))))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-protocol-set!
      (lambda (_%obj27851%_ _%val27852%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27851%_
           _%val27852%_
           '3
           address-info::t
           'protocol))))
    (define gerbil/core/mop~MOP-system-classes#&::address-info-socket-info-set!
      (lambda (_%obj27848%_ _%val27849%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj27848%_
           _%val27849%_
           '4
           address-info::t
           'socket-info))))
    (define gerbil/core/mop~MOP-system-classes#::address-info-family
      (lambda (_%obj27846%_)
        (##structure-ref _%obj27846%_ '1 address-info::t 'family)))
    (define gerbil/core/mop~MOP-system-classes#::address-info-socket-type
      (lambda (_%obj27844%_)
        (##structure-ref _%obj27844%_ '2 address-info::t 'socket-type)))
    (define gerbil/core/mop~MOP-system-classes#::address-info-protocol
      (lambda (_%obj27842%_)
        (##structure-ref _%obj27842%_ '3 address-info::t 'protocol)))
    (define gerbil/core/mop~MOP-system-classes#::address-info-socket-info
      (lambda (_%obj27840%_)
        (##structure-ref _%obj27840%_ '4 address-info::t 'socket-info)))
    (define gerbil/core/mop~MOP-system-classes#::address-info-family-set!
      (lambda (_%obj27837%_ _%val27838%_)
        (##structure-set!
         _%obj27837%_
         _%val27838%_
         '1
         address-info::t
         'family)))
    (define gerbil/core/mop~MOP-system-classes#::address-info-socket-type-set!
      (lambda (_%obj27834%_ _%val27835%_)
        (##structure-set!
         _%obj27834%_
         _%val27835%_
         '2
         address-info::t
         'socket-type)))
    (define gerbil/core/mop~MOP-system-classes#::address-info-protocol-set!
      (lambda (_%obj27831%_ _%val27832%_)
        (##structure-set!
         _%obj27831%_
         _%val27832%_
         '3
         address-info::t
         'protocol)))
    (define gerbil/core/mop~MOP-system-classes#::address-info-socket-info-set!
      (lambda (_%obj27826%_ _%val27828%_)
        (##structure-set!
         _%obj27826%_
         _%val27828%_
         '4
         address-info::t
         'socket-info)))))
