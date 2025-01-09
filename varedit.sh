varedit() {
    if command -v vipe >/dev/null 2>&1; then
        if [ "$#" -eq 1 ]; then
            local var_name="$1"
            local original_value="${!var_name}"
            local was_empty=0

            if [ -z "$original_value" ]; then
                echo "Environment variable '$var_name' does not exist. Creating it as an empty variable."
                export $var_name=""
                was_empty=1
            fi

            # Use vipe to edit the variable
            new_value=$(echo "$original_value" | vipe)

            if [ "$new_value" != "$original_value" ]; then
                export $var_name="$new_value"
                echo "Environment variable '$var_name' has been updated."
            elif [ "$was_empty" -eq 1 ]; then
                unset $var_name
                echo "No changes made. Environment variable '$var_name' has been unset."
            else
                echo "No changes made to the environment variable '$var_name'."
            fi
        else
            echo "vipe is installed, but the function requires exactly one parameter."
            exit 1
        fi
    else
        echo "vipe is not installed."
        exit 1
    fi
}
