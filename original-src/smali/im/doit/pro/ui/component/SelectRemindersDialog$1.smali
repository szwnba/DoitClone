.class Lim/doit/pro/ui/component/SelectRemindersDialog$1;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$1;)Lim/doit/pro/ui/component/SelectRemindersDialog;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .line 165
    .local v0, "listData":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    iget-object v2, v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    invoke-virtual {v2}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    new-instance v1, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$1(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 167
    .local v1, "updateDialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    new-instance v2, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog$1;Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 180
    iget-object v2, v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    invoke-virtual {v2}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZ)V

    .line 182
    .end local v1    # "updateDialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    :cond_0
    return-void
.end method
