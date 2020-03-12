<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Vue_ajax.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>ajax请求数据，Vue填充</title>
    <script src="Scripts/vue.js"></script>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <style>
        [v-cloak] {
            display: none;
        }

        table, tr, td {
            border: 1px solid black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="item">
            <table>
                <tr>
                    <td>姓名</td>
                    <td>性别</td>
                    <td>年龄</td>
                </tr>
                    <tr v-for="i in List">
                        <td v-cloak>{{i.Name}}</td>
                        <td v-cloak>{{i.Sex}}</td>
                        <td v-cloak>{{i.Age}}</td>
                    </tr>
            </table>
            <input type="button" value="你有本事点我？" @click="show" />
            <script>

                //创建Vue实例
                var vm = new Vue({
                    el: '#item',
                    data: {
                        //数组对象
                        List: [
                            { Name: "", Sex: "", Age: "" }
                        ]
                    },
                    methods: {
                        show() {
                            $.post("Default.aspx?Method=show", function (data) {
                                alert("生效");
                                vm.List = null;
                                vm.List = data;
                            }, "json")
                        }
                    }
                })

                var timer = setTimeout(function () {
                    $.post("Default.aspx?Method=show", function (data) {
                        vm.List = data;
                    }, "json")
                });
    </script>
        </div>
    </form>
</body>
</html>