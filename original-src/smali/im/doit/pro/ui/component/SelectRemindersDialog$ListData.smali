.class Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
.super Ljava/lang/Object;
.source "SelectRemindersDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListData"
.end annotation


# instance fields
.field public isSelected:Z

.field public reminder:Lim/doit/pro/model/Reminder;

.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/model/Reminder;Z)V
    .locals 0
    .param p2, "reminder"    # Lim/doit/pro/model/Reminder;
    .param p3, "isSelected"    # Z

    .prologue
    .line 557
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 559
    iput-boolean p3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->isSelected:Z

    .line 560
    return-void
.end method
