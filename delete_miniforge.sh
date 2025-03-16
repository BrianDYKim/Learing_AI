# 미니포지에서 수정한 쉘 복구
conda init --reverse --dry-run
conda init --reverse

# 미니포지가 삭제한 하위 폴더 삭제
CONDA_BASE_ENVIRONMENT=$(conda info --base)
rm -rf ${CONDA_BASE_ENVIRONMENT}

# 남은 전역 콘다 설정파일 삭제
rm -f "${HOME}/.condarc"
