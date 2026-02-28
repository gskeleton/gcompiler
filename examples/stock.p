native printf(const format[], {Float,Fixed,_}:...);

stock my_age() {
    return 26;
}

stock my_name() {
    *var name[] = "John";
    return name;
}

main() {
    printf("%s %d", "my age:", my_age());
    printf("%s %s", "my name:", my_name());
}