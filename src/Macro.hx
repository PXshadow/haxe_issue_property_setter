class Macro {
    public static macro function test(x) {
        return macro ${x}.value;
    }
}