/* SEND MAIL */
        let constTemplateId = use('TemplateId').TEMPLATE_ORDER_NEW;
        const ModelSendGird = await use('ModelSendGird').findSlugTemplate(constTemplateId);
        var userData = {
          toEmail : customer.email,
          templateId : ModelSendGird.template_id,
          drawData : {
            full_name  : customer.getFullNameAttribute, //user.getFullNameAttribute(),
            orderCode : order.order_code,
            orderValue : order.total_pay,
          }
        }
        const  sendGird = await use('SendGird').sendMail(userData)
             
        // *       - name: cc & bcc
        // *         description: ccmail & bcc
        // *         in:  body
        // *         required: true
        // *         type: string
        // *         schema:
        // *           example : {
        // *              cc: 'minhtrannd97@gmail.com,minhtc97@gmail.com',
        // *              bcc : 'minhtcps08807@gmail.com,15143050@hcmute.edu.vn,minhtran.in@outlook.com'
        // *           }
    