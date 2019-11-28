'use strict'

const Doctor = use('TTSoft/Docter/Models/Doctor')
const Helper = use('TTSoft/Docter/Helpers/Helpers')

class DoctorController {
    /**
     * @swagger
     * /api/v1/admin/doctor/rejected:
     *   post:
     *     tags:
     *       - AdminDoctor
     *     summary: reject doctor
     *     security:
     *       - Bearer: []
     *     parameters:
     *       - name: info
     *         description: id doctor
     *         in:  body
     *         required: true
     *         type: string
     *         schema:
     *           example : {
     *              id : '20'
     *           }
     *     responses:
     *       200:
     *         description: Server is OK!
     *       500:
     *         description: Error Server Internal!
     */
    async reject({ request, response }) {
        const { id } = request.all()
        const doctor = await Doctor.query().where('id', id).first()
        if (doctor) {
            let doctor = await Doctor.updateStatus(id, '0')
            const dataMail = {
                drawdata: {
                    full_name: `${doctor.fullname}, your doctor's license haven't approved `
                },
                template: use('TTSoft/Docter/Helpers/const').EMPLATE_CUSTOMER_ACTIVE_ACCOUNT,
                toMail: doctor.email
            }
            await Helper.sendGrid(dataMail)
            return response.respondWithSuccess(doctor, 'Success, detail message sent to this doctor ')
        }
        return response.respondWithError('Please try again another one id')
    }
    /**
     * @swagger
     * /api/v1/admin/doctor/approved:
     *   post:
     *     tags:
     *       - AdminDoctor
     *     summary: approve doctor
     *     security:
     *       - Bearer: []
     *     parameters:
     *       - name: info
     *         description: id doctor
     *         in:  body
     *         required: true
     *         type: string
     *         schema:
     *           example : {
     *              id : '20'
     *           }
     *     responses:
     *       200:
     *         description: Server is OK!
     *       500:
     *         description: Error Server Internal!
     */
    async approve({ request, response }) {
        const { id } = request.all()
        const doctor = await Doctor.query().where('id', id).first()
        if (doctor) {
            let doctor = await Doctor.updateStatus(id, '1')
            
            const dataMail = {
                drawdata: {
                    full_name: `${doctor.fullname}, your doctor's license have approved `
                },
                template: use('TTSoft/Docter/Helpers/const').EMPLATE_CUSTOMER_ACTIVE_ACCOUNT,
                toMail: doctor.email
            }
            await Helper.sendGrid(dataMail)
            return response.respondWithSuccess(doctor, 'Success,detail message sent to this doctor')
        }
        return response.respondWithError('Please try again another one id')
    }

}
module.exports = DoctorController
