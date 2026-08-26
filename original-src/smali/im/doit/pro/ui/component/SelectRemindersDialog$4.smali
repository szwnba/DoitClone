.class Lim/doit/pro/ui/component/SelectRemindersDialog$4;
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
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValidSelectedReminders()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v4, "selectedReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "selectedRelivateTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v2, "selectedAbsoluteTimes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v5, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v5}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 258
    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 259
    const/4 v4, 0x0

    .line 261
    .end local v4    # "selectedReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    :cond_1
    return-object v4

    .line 239
    .restart local v4    # "selectedReminders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Reminder;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    .line 240
    .local v0, "item":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    iget-boolean v8, v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    if-eqz v8, :cond_0

    .line 243
    iget-object v1, v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 244
    .local v1, "reminder":Lim/doit/pro/model/Reminder;
    invoke-virtual {v1}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 245
    .local v6, "timeMillis":J
    invoke-virtual {v1}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 246
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 249
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    :goto_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 254
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$5(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$4(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$5(Lim/doit/pro/ui/component/SelectRemindersDialog;)Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;

    move-result-object v0

    invoke-direct {p0}, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->getValidSelectedReminders()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lim/doit/pro/ui/component/SelectRemindersDialog$OnSelectRemindersFinishListner;->finish(Ljava/util/ArrayList;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$4;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$4(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    goto :goto_0
.end method
