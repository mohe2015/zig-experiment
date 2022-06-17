const std = @import("std");
const v = @cImport(@cInclude("vulkan/vulkan.h"));
const g = @cImport(@cInclude("GLFW/glfw3.h"));
const warn = std.debug.warn;
const panic = std.debug.panic;

// https://ziglang.org/documentation/master/std/
// https://ziglang.org/documentation/master/

pub fn main() anyerror!void {
    std.log.info("Hi.", .{});
    if (g.glfwInit() == g.GL_FALSE) {
        panic("Failed to initialize GLFW\n", .{});
    }
    defer g.glfwTerminate();

    std.log.info("All your codebase are belong to us.", .{});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
