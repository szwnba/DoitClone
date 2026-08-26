.class Lim/doit/pro/activity/ProjectDetailActivity$2;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/model/BaseEntity$OnPropertyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectDetailActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$2;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Lim/doit/pro/activity/ProjectDetailActivity$2;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ProjectDetailActivity;->access$8(Lim/doit/pro/activity/ProjectDetailActivity;)V

    .line 213
    return-void
.end method
