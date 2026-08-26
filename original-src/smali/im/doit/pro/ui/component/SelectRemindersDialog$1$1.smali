.class Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$1;

.field private final synthetic val$listData:Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog$1;Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$1;

    iput-object p2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;->val$listData:Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Calendar;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 171
    if-eqz p1, :cond_0

    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$1;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$1;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$1;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/ui/component/SelectRemindersDialog;->mSelectedAbsoluteTimes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;->val$listData:Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    iget-object v0, v1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 175
    .local v0, "reminder":Lim/doit/pro/model/Reminder;
    invoke-virtual {v0, p1}, Lim/doit/pro/model/Reminder;->setTime(Ljava/util/Calendar;)V

    .line 176
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;->val$listData:Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    iput-object v0, v1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 177
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$1$1;->this$1:Lim/doit/pro/ui/component/SelectRemindersDialog$1;

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$1;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog$1;)Lim/doit/pro/ui/component/SelectRemindersDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$2(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
