.class abstract Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SelectProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    .line 255
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 256
    return-void
.end method


# virtual methods
.method public abstract setViewContent(I)V
.end method
