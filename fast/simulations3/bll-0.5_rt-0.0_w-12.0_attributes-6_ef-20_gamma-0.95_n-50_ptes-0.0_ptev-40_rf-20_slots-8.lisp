(ql:quickload "split-sequence")
(push :actr-fast *features*)
(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/andrea/Documents/Research/PTSD/fast/ptsd.lisp")
(let ((sim (make-instance 'simulation)))
  (setf (n sim) 50)
  (setf (ptev sim) '(40))
  (setf (ptes sim) '(0.0))
  (setf (event-frequency sim) 20)
  (setf (rumination-frequency sim) 20)
  (setf (num-attributes sim) 6)
  (setf (num-slots sim) 8)
  (setf (gamma sim) 0.95)
  (setf (gethash :imaginal-activation (model-params sim)) 12.0)
  (setf (gethash :bll (model-params sim)) 0.5)
  (setf (gethash :rt (model-params sim)) 0.0)
  (setf (logfile sim) "bll-0.5_rt-0.0_w-12.0_attributes-6_ef-20_gamma-0.95_n-50_ptes-0.0_ptev-40_rf-20_slots-8.csv")
  (run-simulations sim))
(quit)
