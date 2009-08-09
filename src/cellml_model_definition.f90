! The module for mapping to the C++ (via C) code
MODULE CELLML_MODEL_DEFINITION
  USE, INTRINSIC :: ISO_C_BINDING
  IMPLICIT NONE
  INTERFACE
     FUNCTION CREATE_CELLML_MODEL_DEFINITION (URI) &
          BIND(C, NAME='create_cellml_model_definition_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
       CHARACTER, DIMENSION(*) :: URI
       TYPE (C_PTR) :: CREATE_CELLML_MODEL_DEFINITION
     END FUNCTION CREATE_CELLML_MODEL_DEFINITION
     SUBROUTINE DESTROY_CELLML_MODEL_DEFINITION (MODEL) &
          BIND(C,NAME='destroy_cellml_model_definition_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR
       TYPE (C_PTR) :: MODEL
     END SUBROUTINE DESTROY_CELLML_MODEL_DEFINITION
     SUBROUTINE CELLML_MODEL_DEFINITION_SET_SAVE_TEMP_FILES (MODEL,STATE) &
          BIND(C,NAME='cellml_model_definition_set_save_temp_files_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
       INTEGER (C_INT), VALUE :: STATE
     END SUBROUTINE CELLML_MODEL_DEFINITION_SET_SAVE_TEMP_FILES
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_SAVE_TEMP_FILES &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_save_temp_files_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_SAVE_TEMP_FILES
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_INSTANTIATE &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_instantiate_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_INSTANTIATE
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_N_CONSTANTS &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_n_constants_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_N_CONSTANTS
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_N_RATES &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_n_rates_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_N_RATES
     INTEGER (C_INT) FUNCTION CELLML_MODEL_DEFINITION_GET_N_ALGEBRAIC &
          (MODEL) &
          BIND(C,NAME='cellml_model_definition_get_n_algebraic_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_INT
       TYPE (C_PTR), VALUE :: MODEL
     END FUNCTION CELLML_MODEL_DEFINITION_GET_N_ALGEBRAIC
     SUBROUTINE CELLML_MODEL_DEFINITION_CALL_SETUP_FIXED_CONSTANTS &
          (MODEL,CONSTANTS,RATES,STATES) &
          BIND(C,NAME='cellml_model_definition_call_setup_fixed_constants_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_DOUBLE
       TYPE (C_PTR), VALUE :: MODEL
       REAL (C_DOUBLE) :: CONSTANTS(*)
       REAL (C_DOUBLE) :: RATES(*)
       REAL (C_DOUBLE) :: STATES(*)
     END SUBROUTINE CELLML_MODEL_DEFINITION_CALL_SETUP_FIXED_CONSTANTS
     SUBROUTINE CELLML_MODEL_DEFINITION_CALL_COMPUTE_RATES &
          (MODEL,VOI,STATES,RATES,CONSTANTS,ALGEBRAIC) &
          BIND(C,NAME='cellml_model_definition_call_compute_rates_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_DOUBLE
       TYPE (C_PTR), VALUE :: MODEL
       REAL (C_DOUBLE), VALUE :: VOI
       REAL (C_DOUBLE) :: STATES(*)
       REAL (C_DOUBLE) :: RATES(*)
       REAL (C_DOUBLE) :: CONSTANTS(*)
       REAL (C_DOUBLE) :: ALGEBRAIC(*)
     END SUBROUTINE CELLML_MODEL_DEFINITION_CALL_COMPUTE_RATES
     SUBROUTINE CELLML_MODEL_DEFINITION_CALL_EVALUATE_VARIABLES &
          (MODEL,VOI,STATES,RATES,CONSTANTS,ALGEBRAIC) &
          BIND(C,NAME='cellml_model_definition_call_evaluate_variables_f')
       USE, INTRINSIC :: ISO_C_BINDING, ONLY: C_PTR,C_DOUBLE
       TYPE (C_PTR), VALUE :: MODEL
       REAL (C_DOUBLE), VALUE :: VOI
       REAL (C_DOUBLE) :: STATES(*)
       REAL (C_DOUBLE) :: RATES(*)
       REAL (C_DOUBLE) :: CONSTANTS(*)
       REAL (C_DOUBLE) :: ALGEBRAIC(*)
     END SUBROUTINE CELLML_MODEL_DEFINITION_CALL_EVALUATE_VARIABLES
  END INTERFACE
END MODULE CELLML_MODEL_DEFINITION
