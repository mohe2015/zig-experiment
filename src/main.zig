const std = @import("std");
const v = @cImport(@cInclude("vulkan/vulkan.h"));
const g = @cImport(@cInclude("GLFW/glfw3.h"));
const panic = std.debug.panic;

// https://ziglang.org/documentation/master/std/
// https://ziglang.org/documentation/master/

var window: *g.GLFWwindow = undefined;

export fn errorCallback(err: c_int, description: [*c]const u8) void {
    std.log.err("{} {s}\n", .{err,description});
}

pub fn main() anyerror!void {
    _ = g.glfwSetErrorCallback(errorCallback);

    if (g.glfwInit() == g.GL_FALSE) {
        panic("Failed to initialize GLFW\n", .{});
    }
    defer g.glfwTerminate();

    // g.glfwWindowHint(g.GLFW_CLIENT_API, g.GLFW_NO_API);
    window = g.glfwCreateWindow(800, 600, "Vulkan window", null, null) orelse panic("Failed to create window\n", .{});

    while (true) {
        
    }

    std.log.info("All your codebase are belong to us.", .{});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
