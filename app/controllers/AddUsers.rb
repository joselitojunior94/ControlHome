require 'apartamentos_controller'

class AddUsers
	def creatingUser(apartamento)
		userAPT = User.new
		userAPT.email = apartamento.local.delete(' ')+'@'+apartamento.local.delete(' ')
		userAPT.apt_login_id = apartamento.id
		userAPT.password = apartamento.cpf_proprietario
		userAPT.created_at = DateTime.now
        userAPT.updated_at = DateTime.now
        userAPT.save
	end
end