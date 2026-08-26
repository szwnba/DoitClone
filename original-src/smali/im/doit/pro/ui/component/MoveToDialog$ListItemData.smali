.class Lim/doit/pro/ui/component/MoveToDialog$ListItemData;
.super Ljava/lang/Object;
.source "MoveToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/MoveToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemData"
.end annotation


# instance fields
.field public icon:I

.field public name:I

.field public selected:Z

.field final synthetic this$0:Lim/doit/pro/ui/component/MoveToDialog;

.field public type:Lim/doit/pro/model/enums/BoxType;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V
    .locals 4
    .param p2, "icon"    # I
    .param p3, "name"    # I
    .param p4, "type"    # Lim/doit/pro/model/enums/BoxType;

    .prologue
    const/4 v3, 0x1

    .line 313
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput p2, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->icon:I

    .line 315
    iput p3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->name:I

    .line 316
    iput-object p4, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->type:Lim/doit/pro/model/enums/BoxType;

    .line 318
    invoke-static {p1}, Lim/doit/pro/ui/component/MoveToDialog;->access$3(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 319
    invoke-static {p1}, Lim/doit/pro/ui/component/MoveToDialog;->access$3(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 320
    invoke-static {p1}, Lim/doit/pro/ui/component/MoveToDialog;->access$3(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/Task;

    .line 321
    .local v1, "task":Lim/doit/pro/model/Task;
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->inbox:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isInbox()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    .line 356
    .end local v1    # "task":Lim/doit/pro/model/Task;
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local v1    # "task":Lim/doit/pro/model/Task;
    :cond_1
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isToday()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto :goto_0

    .line 325
    :cond_2
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto :goto_0

    .line 327
    :cond_3
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 328
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isTomorrow()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 329
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto :goto_0

    .line 330
    :cond_4
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->scheduled:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 331
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 332
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto :goto_0

    .line 333
    :cond_5
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->someday:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isSomeday()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 334
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto :goto_0

    .line 335
    :cond_6
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->waiting:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lim/doit/pro/model/Task;->isWaiting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto :goto_0

    .line 338
    .end local v1    # "task":Lim/doit/pro/model/Task;
    :cond_7
    invoke-static {p1}, Lim/doit/pro/ui/component/MoveToDialog;->access$3(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    invoke-static {p1}, Lim/doit/pro/ui/component/MoveToDialog;->access$3(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/BaseEntityWithPos;

    move-result-object v0

    check-cast v0, Lim/doit/pro/model/Project;

    .line 340
    .local v0, "project":Lim/doit/pro/model/Project;
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isToday()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 341
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto/16 :goto_0

    .line 342
    :cond_8
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 343
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto/16 :goto_0

    .line 344
    :cond_9
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 345
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isTomorrow()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 346
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto/16 :goto_0

    .line 347
    :cond_a
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->scheduled:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 348
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isSchedule()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 349
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto/16 :goto_0

    .line 350
    :cond_b
    sget-object v2, Lim/doit/pro/model/enums/BoxType;->someday:Lim/doit/pro/model/enums/BoxType;

    invoke-virtual {v2, p4}, Lim/doit/pro/model/enums/BoxType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v0}, Lim/doit/pro/model/Project;->isSomeday()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    iput-boolean v3, p0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    goto/16 :goto_0
.end method
