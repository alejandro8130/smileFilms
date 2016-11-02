$(function () {

    $('#form-login').bootstrapValidator({

        message: 'Este valor no es valido',

        feedbackIcons: {

            valid: 'glyphicon glyphicon-ok',

            invalid: 'glyphicon glyphicon-remove',

            validating: 'glyphicon glyphicon-refresh'

        },

        fields: {

            Nombre: {

                validators: {

                    notEmpty: {

                        message: 'El nombre de usuario es requerido'

                    }

                }

            },

            Contrasena: {

                validators: {

                    notEmpty: {

                        message: 'La contraseña es requerida'

                    }

                }

            }

        }

    });


    $('#registrationForm').bootstrapValidator({
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'

        },
        fields: {
            nombre: {
                validators: {
                    notEmpty: {
                        message: 'El nombre es requerido'

                    }

                }

            },
            apellido: {
                validators: {
                    notEmpty: {
                        message: 'El apellido es requerido'

                    }

                }

            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'El correo es requerido y no puede ser vacio'

                    },
                    emailAddress: {
                        message: 'El correo electronico no es valido'

                    }

                }

            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'El password es requerido y no puede ser vacio'

                    },
                    stringLength: {
                        min: 8,
                        message: 'El password debe contener al menos 8 caracteres'

                    }

                }

            },
            fecha: {
                validators: {
                    notEmpty: {
                        message: 'La fecha de nacimiento es requerida y no puede ser vacia'

                    },
                    date: {
                        format: 'YYYY-MM-DD',
                        message: 'La fecha de nacimiento no es valida'

                    }

                }

            },
            sexo: {
                validators: {
                    notEmpty: {
                        message: 'El sexo es requerido'

                    }

                }

            },
            tel: {
                message: 'El teléfono no es valido',
                validators: {
                    notEmpty: {
                        message: 'El teléfono es requerido y no puede ser vacio'

                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: 'El teléfono solo puede contener números'

                    }

                }

            },
            documento: {
                message: 'El documento no es valido',
                validators: {
                    notEmpty: {
                        message: 'El documento es requerido y no puede ser vacio'

                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: 'El documento solo puede contener números'

                    }

                }

            },
            carnet: {
                message: 'El carnet no es valido',
                validators: {
                    notEmpty: {
                        message: 'El carnet es requerido y no puede ser vacio'

                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: 'El carnet solo puede contener números'

                    }

                }

            },
            telefono_cel: {
                message: 'El teléfono no es valido',
                validators: {
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: 'El teléfono solo puede contener números'

                    }

                }

            },
        }

    });



});

