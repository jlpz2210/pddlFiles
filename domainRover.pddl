(define (domain rover)
	(:requirements :typing)
    (:types mineral rover localizacion)
    (:predicates
        (mineral-en-l ?l - localizacion ?m - mineral)
        (rover-en-l ?l - localizacion ?r - rover)
        (laboratorio-en ?l - localizacion)
        (mineral-en-cualquier-lab ?m - mineral)
        (rover-ocupado ?m - mineral)
        (rover-vacio)
        (ir ?l1 - localizacion ?l2 - localizacion)  
    )
	;————————————————————————————————————
	(:action mover
        :parameters (?r - rover ?l1 - localizacion ?l2 - localizacion)
        :precondition 
            (and (rover-en-l ?l1 ?r) (ir ?l1 ?l2))
        :effect 
            (and (not (rover-en-l ?l1 ?r)) (rover-en-l ?l2 ?r))
    )
	;————————————————————————————————————
	(:action tomar
		:parameters (?m - mineral ?l1 - localizacion ?r - rover)
		:precondition 
			(and (rover-vacio) (rover-en-l ?l1 ?r) (mineral-en-l ?l1 ?m) )
		:effect
			(and (not(rover-vacio)) (rover-ocupado ?m))
	)
	;————————————————————————————————————
	
	(:action dejar-en-laboratorio
        :parameters (?m - mineral ?l1 - localizacion ?r - rover)
        :precondition
            (and (rover-ocupado ?m) (rover-en-l ?l1 ?r) (laboratorio-en ?l1))
        :effect
            (and (not(rover-ocupado ?m)) (rover-vacio) 
                 (rover-en-l ?l1 ?r) 
                 (mineral-en-cualquier-lab ?m))
    )
    
    (:action dejar-en-laboratorio-especifico
        :parameters (?m - mineral ?l1 - localizacion ?r - rover)
        :precondition
            (and (rover-ocupado ?m) (rover-en-l ?l1 ?r) (laboratorio-en ?l1))
        :effect
            (and (not(rover-ocupado ?m)) (rover-vacio)
                 (rover-en-l ?l1 ?r) 
                 (mineral-en-l ?l1 ?m))
    )
	
	
	
	
	;;(:action dejar
    ;    :parameters (?m - mineral ?l1 - localizacion ?r - rover)
    ;;    :precondition
    ;        (and (rover-ocupado ?m) (rover-en-l ?l1 ?r) (laboratorio-en ?l1))
    ;    :effect
    ;        (and (not(rover-ocupado ?m)) (rover-vacio) 
    ;         (rover-en-l ?l1 ?r) 
    ;         (or (mineral-en-cualquier-lab ?m) (mineral-en-l ?l1 ?m))
    ;        )
    ;)
)
