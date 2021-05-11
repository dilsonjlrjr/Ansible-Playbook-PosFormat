.PHONY: clean requirements

clean:
	@echo "Executando Limpeza..."
	rm -rf roles/installK8s*
	rm -rf roles/installDocker*

requirements:
	@echo "Instalando Requisitos..."
	ansible-galaxy install -r requirements.yml --roles-path roles