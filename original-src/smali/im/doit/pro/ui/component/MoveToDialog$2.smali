.class Lim/doit/pro/ui/component/MoveToDialog$2;
.super Ljava/lang/Object;
.source "MoveToDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/MoveToDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/MoveToDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/MoveToDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog$2;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 230
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog$2;->this$0:Lim/doit/pro/ui/component/MoveToDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/MoveToDialog;->access$12(Lim/doit/pro/ui/component/MoveToDialog;)V

    .line 231
    return-void
.end method
