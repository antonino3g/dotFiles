Git Basic

```bash
## Passos após clonar um repo. git
# Criar uma branch, pois mexer na master pode dar ruim
 $ git checkout -b google-search

## Verificar mudancas na branch
 $ git diff
 
## passos pro commit
 $ git status
 $ git add -A
 $ git commit -m 'feat: add google images search'

## Push normal
 $ git push origin branch
 
## forcar commit:
 $ git commit --amend
 $ git push --force origin google-search(branches)
 
## Update modificacoes do github pro local sem precisar clonar
 $ git pull --rebase origin master
 ```
