.class Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$2;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$2;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 6
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$2;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$2;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedAbsoluteTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    new-instance v0, Lim/doit/pro/model/Reminder;

    invoke-direct {v0}, Lim/doit/pro/model/Reminder;-><init>()V

    .line 201
    .local v0, "reminder":Lim/doit/pro/model/Reminder;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Reminder;->setUuid(Ljava/lang/String;)V

    .line 202
    const-string v1, "popup"

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Reminder;->setMode(Ljava/lang/String;)V

    .line 203
    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Reminder;->setView(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Reminder;->setTime(Ljava/util/Calendar;)V

    .line 205
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$2;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$2;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    iget-object v4, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$2;

    invoke-static {v4}, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$2;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v0, v5}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$2$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$2;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$2;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$2;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
