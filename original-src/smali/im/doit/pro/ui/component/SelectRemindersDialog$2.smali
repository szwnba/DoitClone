.class Lim/doit/pro/ui/component/SelectRemindersDialog$2;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$2;)Lim/doit/pro/ui/component/SelectRemindersDialog;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$3(Lim/doit/pro/ui/component/SelectRemindersDialog;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$1(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 193
    .local v0, "addDialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    new-instance v1, Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog$2;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 209
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZ)V

    goto :goto_0
.end method
