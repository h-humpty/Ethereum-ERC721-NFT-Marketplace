git filter-branch --commit-filter '
        if [ "$GIT_COMMITTER_NAME" = "navigaid" ];
        then
                GIT_COMMITTER_NAME="whitedragon001227";
                GIT_AUTHOR_NAME="whitedragon001227";
                GIT_COMMITTER_EMAIL="whitedragon001227@gmail.com";
                GIT_AUTHOR_EMAIL="whitedragon001227@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD