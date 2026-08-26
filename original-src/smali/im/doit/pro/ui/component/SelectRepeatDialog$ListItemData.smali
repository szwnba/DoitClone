.class Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;
.super Ljava/lang/Object;
.source "SelectRepeatDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRepeatDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemData"
.end annotation


# instance fields
.field public mode:Lim/doit/pro/model/enums/RepeaterMode;

.field public name:I

.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectRepeatDialog;ILim/doit/pro/model/enums/RepeaterMode;)V
    .locals 0
    .param p2, "name"    # I
    .param p3, "mode"    # Lim/doit/pro/model/enums/RepeaterMode;

    .prologue
    .line 204
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->this$0:Lim/doit/pro/ui/component/SelectRepeatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p2, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->name:I

    .line 206
    iput-object p3, p0, Lim/doit/pro/ui/component/SelectRepeatDialog$ListItemData;->mode:Lim/doit/pro/model/enums/RepeaterMode;

    .line 207
    return-void
.end method
