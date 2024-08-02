#include "user.pb.h"
#include "MprpcApplication.h"
#include "MprpcChannel.h"
#include "MprpcController.h"

#include <iostream>

void addService(fixbug::UserServiceRpc_Stub &stub, MprpcController &controller)
{
    // 加法函数的参数请求，这是调用加法函数的传递参数
    fixbug::AddRequest req;
    req.set_a(100);
    req.set_b(200);

    // 加法函数的回复，用于存放函数的返回结果
    fixbug::AddResponse rsp;

    stub.Add(&controller, &req, &rsp, nullptr);

    // 通过重写protobuf的RpcController，接收调用结果的状态，如果状态为true，则确定调用失败，打印失败信息
    if (controller.Failed())
    {
        std::cout << controller.ErrorText() << std::endl;
    }
    // 调用成功，返回结果
    else
    {
        if (0 == rsp.result().errcode())
        {
            std::cout << "rpc Add response is:" << rsp.addresult() << std::endl;
        }
        else
        {
            std::cout << "rpc response error : " << rsp.result().errmsg() << std::endl;
        }
    }
}

void loginService(fixbug::UserServiceRpc_Stub &stub, MprpcController &controller)
{
    fixbug::LoginRequest request;
    request.set_name("zhang san");
    request.set_pwd("123456");
    // rpc方法的响应
    fixbug::LoginResponse response;

    // 发起rpc方法的调用
    stub.Login(&controller, &request, &response, nullptr);

    // 如果rpc远程调用失败，打印错误信息
    if (controller.Failed())
    {
        std::cout << controller.ErrorText() << std::endl;
    }
    // 调用rpc成功
    else
    {
        // // 业务成功响应码为0
        // if (0 == response.result().errcode())
        // {
        //     std::cout << "rpc Login response success:" << response.success() << std::endl;
        // }
        // // 业务失败打印错误信息
        // else
        // {
        //     std::cout << "rpc response error : " << response.result().errmsg() << std::endl;
        // }

        // debug
        std::cout << "text msg: " << response.result().errcode() << std::endl;
        std::cout << "text msg: " << response.result().errmsg() << std::endl;
        std::cout << "text msg: " << response.success() << std::endl;
    }
}

void registerService(fixbug::UserServiceRpc_Stub &stub, MprpcController &controller)
{
    // 演示调用Register
    fixbug::RegisterRequest req;
    // TODO:整数形式是否可行
    req.set_id(100);
    req.set_name("mprpc");
    req.set_pwd("123456");
    fixbug::RegisterResponse rsp;

    // 以同步的方式发起rpc调用请求，等待返回结果
    stub.Register(&controller, &req, &rsp, nullptr);
    if (controller.Failed())
    {
        std::cout << controller.ErrorText() << std::endl;
    }
    else
    {
        if (0 == rsp.result().errcode())
        {
            std::cout << "rpc Register response success:" << rsp.success() << std::endl;
        }
        else
        {
            std::cout << "rpc response error : " << rsp.result().errmsg() << std::endl;
        }
    }
}

int main(int argc, char **argv)
{
    // 加载配置文件，MprpcChannel需要知道rpc服务器的信息
    MprpcApplication::Init(argc, argv);

    // MprpcChannel 是一个用于与远程服务进行通信的类。
    // 它实现了 RPC 协议的底层细节，例如发送请求和接收响应。
    // 创建 MprpcChannel 的实例并传递给 UserServiceRpc_Stub 构造函数。
    // 这个 MprpcChannel 对象负责处理与远程服务的网络通信。

    // UserServiceRpc_Stub 的构造函数接收一个 MprpcChannel 对象作为参数。
    // 这表明 UserServiceRpc_Stub 依赖于 MprpcChannel 来完成实际的网络通信。
    fixbug::UserServiceRpc_Stub stub(new MprpcChannel());

    // UserServiceRpc_Stub 类提供了与远程服务 UserServiceRpc 进行通信的方法。
    // 在这个函数中传递 stub 参数，意味着你可以使用 stub 对象来调用远程服务的方法。
    // controller 对象提供了 RPC 调用的控制功能，例如设置超时、取消请求、检查 RPC 调用的状态等。
    // 它还可以用来获取 RPC 调用的详细信息，如错误信息、执行状态等。
    MprpcController controller;

    // 调用远程发布的rpc方法Add
    addService(stub, controller);
    //loginService(stub, controller);
    //registerService(stub, controller);

    return 0;
}