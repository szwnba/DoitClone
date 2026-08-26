.class Lim/doit/pro/ui/component/SelectTagsDialog$1;
.super Ljava/lang/Object;
.source "SelectTagsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectTagsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectTagsDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectTagsDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 133
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectTagsDialog$1;->this$0:Lim/doit/pro/ui/component/SelectTagsDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$0(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    .line 134
    return-void
.end method
