#ifndef __MPRPC_APPLICATION_H__
#define __MPRPC_APPLICATION_H__

#include "MprpcController.h"

class MprpcApplication
{
public:
    class MprpcConfig
    {
    public:
        void LoadConfigFile(const char *config_file);             // 解析配置文件，并保存到config类
        std::string Load(const std::string &key);                 // 查询配置文件
        void Trim(std::string &src_buf);                          // 去掉字符串前后的空格
        std::unordered_map<std::string, std::string> m_configMap; // 键值对储存信息
    };

    static void Init(int argc, char **argv); // 初始化MprpcApplication
    static MprpcApplication &GetInstance();  // 获取MprpcApplication单例
    static MprpcConfig &GetConfig();         // 获取MprpcConfig

private:
    static MprpcConfig m_config; //  声明静态成员变量config

    MprpcApplication() = default;                        // 默认构造函数
    MprpcApplication(const MprpcApplication &) = delete; // 删除拷贝构造
    MprpcApplication(MprpcApplication &&) = delete;      // 删除右值引用
    void operator=(const MprpcApplication &) = delete;   // 删除赋值操作
};

#endif // __MPRPC_APPLICATION_H__